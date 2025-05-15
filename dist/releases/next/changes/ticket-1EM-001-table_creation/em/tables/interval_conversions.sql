-- liquibase formatted sql
-- changeset EM:1747280887947 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/interval_conversions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/interval_conversions.sql:null:8c9fb81a10dd9adf2651a419daaf3c702f5bc2b9:create

create table em.interval_conversions (
    unit                 number(6, 0) not null enable,
    measure_id           number(1, 0) not null enable,
    converted_unit       number(6, 0) not null enable,
    converted_measure_id number(1, 0) not null enable,
    user_id              varchar2(128 byte) not null enable,
    last_change_date     date default current_date not null enable
);

alter table em.interval_conversions
    add constraint pk_interval_conversions primary key ( unit,
                                                         measure_id )
        using index enable;

