-- liquibase formatted sql
-- changeset EM:1747280887866 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/groups.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/groups.sql:null:da3b6e4ab087431eaa096ffc043081896edbfbb9:create

create table em.groups (
    id               number(38, 0) not null enable,
    description      varchar2(50 byte) not null enable,
    application_id   number(5, 0) not null enable,
    cycle_id         number(5, 0) not null enable,
    preferred_run_tm date,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.groups
    add constraint pk_groups primary key ( id )
        using index enable;

