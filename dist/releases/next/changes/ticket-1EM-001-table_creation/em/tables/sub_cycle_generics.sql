-- liquibase formatted sql
-- changeset EM:1747280888140 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_generics.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_generics.sql:null:e315e348d585d8078637de906aff33b8792d8c78:create

create table em.sub_cycle_generics (
    cycle_id         number(5, 0) not null enable,
    measure_code     varchar2(20 byte) not null enable,
    units            number(8, 2) default 0 not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_generics
    add constraint pk_sub_cycle_generics primary key ( cycle_id,
                                                       measure_code )
        using index enable;

