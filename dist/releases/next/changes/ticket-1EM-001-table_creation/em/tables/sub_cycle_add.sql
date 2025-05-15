-- liquibase formatted sql
-- changeset EM:1747280888066 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_add.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_add.sql:null:dadee63c14e58724aca14fc947cabb0c488e2b0d:create

create table em.sub_cycle_add (
    cycle_id         number(5, 0) not null enable,
    interval_id      number(1, 0) not null enable,
    units            number(8, 2) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_add
    add constraint pk_sub_cycle_add primary key ( cycle_id,
                                                  interval_id )
        using index enable;

