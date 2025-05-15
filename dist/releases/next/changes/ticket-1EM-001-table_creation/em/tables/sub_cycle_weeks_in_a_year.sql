-- liquibase formatted sql
-- changeset EM:1747280888217 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_weeks_in_a_year.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_weeks_in_a_year.sql:null:1174270cc5a29a6e1509497f50ce809b27bed6d0:create

create table em.sub_cycle_weeks_in_a_year (
    cycle_id         number(5, 0) not null enable,
    week_id          number(2, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_weeks_in_a_year
    add constraint ck_sub_cycle_weeks_in_a_year check ( week_id between 1 and 52 ) enable;

alter table em.sub_cycle_weeks_in_a_year
    add constraint pk_sub_cycle_weeks_in_a_year primary key ( cycle_id,
                                                              week_id )
        using index enable;

