-- liquibase formatted sql
-- changeset EM:1747280888174 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/sub_cycle_time_in_a_day.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/sub_cycle_time_in_a_day.sql:null:326264040ba601aac264eb22e471f15016eb75e6:create

create table em.sub_cycle_time_in_a_day (
    cycle_id         number(5, 0) not null enable,
    database_time    varchar2(5 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_time_in_a_day
    add constraint ck_sub_cycle_time_in_a_day check ( regexp_like ( database_time,
                                                                    '^(([0-9])|([0-1][0-9])|([2][0-3]))(:(([0-9])|([0-5][0-9])))?$' )
                                                                    ) enable;

alter table em.sub_cycle_time_in_a_day
    add constraint pk_sub_cycle_time_in_a_day primary key ( cycle_id,
                                                            database_time )
        using index enable;

