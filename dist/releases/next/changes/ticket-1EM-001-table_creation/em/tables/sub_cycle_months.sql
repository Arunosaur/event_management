-- liquibase formatted sql
-- changeset EM:1747280888156 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_months.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_months.sql:null:6d878a60ed025b54fd3c2c759bccbe1b8fe8448d:create

create table em.sub_cycle_months (
    cycle_id         number(5, 0) not null enable,
    month_id         number(2, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_months
    add constraint pk_sub_cycle_months primary key ( cycle_id,
                                                     month_id )
        using index enable;

