-- liquibase formatted sql
-- changeset EM:1747280888083 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_days_in_a_month.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_days_in_a_month.sql:null:e73b62d0e129ac160d7c90ab3c3454cd85e58b70:create

create table em.sub_cycle_days_in_a_month (
    cycle_id         number(5, 0) not null enable,
    day_id           number(2, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_days_in_a_month
    add constraint ck_sub_cycle_days_in_a_month check ( day_id between 1 and 31 ) enable;

alter table em.sub_cycle_days_in_a_month
    add constraint pk_sub_cycle_days_in_a_month primary key ( cycle_id,
                                                              day_id )
        using index enable;

