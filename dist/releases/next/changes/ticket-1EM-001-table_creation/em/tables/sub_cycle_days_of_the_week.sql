-- liquibase formatted sql
-- changeset EM:1747280888124 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_days_of_the_week.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_days_of_the_week.sql:null:29d8829fb4fe98a66a91216eb8ebac1938ca1b79:create

create table em.sub_cycle_days_of_the_week (
    cycle_id         number(5, 0) not null enable,
    day_id           number(1, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_days_of_the_week
    add constraint pk_sub_cycle_days_of_the_week primary key ( cycle_id,
                                                               day_id )
        using index enable;

