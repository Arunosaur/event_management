-- liquibase formatted sql
-- changeset EM:1747280888196 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_weeks_in_a_month.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_weeks_in_a_month.sql:null:592bf92ac4e9f5a22bd6278a3a6fc9fe664c0bab:create

create table em.sub_cycle_weeks_in_a_month (
    cycle_id         number(5, 0) not null enable,
    week_id          number(1, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_weeks_in_a_month
    add constraint ck_sub_cycle_weeks_in_a_month check ( week_id between 1 and 5 ) enable;

alter table em.sub_cycle_weeks_in_a_month
    add constraint pk_sub_cycle_weeks_in_a_month primary key ( cycle_id,
                                                               week_id )
        using index enable;

