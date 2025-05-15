-- liquibase formatted sql
-- changeset EM:1747280888104 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_days_in_an_year.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_days_in_an_year.sql:null:5bfcdb0e72355f12e852f12a4c68475beafbc1de:create

create table em.sub_cycle_days_in_an_year (
    cycle_id         number(5, 0) not null enable,
    day_id           number(3, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_days_in_an_year
    add constraint ck_sub_cycle_days_in_an_year check ( day_id between 1 and 366 ) enable;

alter table em.sub_cycle_days_in_an_year
    add constraint pk_sub_cycle_days_in_an_year primary key ( cycle_id,
                                                              day_id )
        using index enable;

