-- liquibase formatted sql
-- changeset EM:1747280887835 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/group_events.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/group_events.sql:null:e25fab751a26a0d572e79fbbaff985c61cf0c3e1:create

create table em.group_events (
    group_id            number(38, 0) not null enable,
    event_definition_id number(38, 0) not null enable,
    sequence            number(4, 0) not null enable,
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.group_events
    add constraint pk_group_events primary key ( group_id,
                                                 event_definition_id )
        using index enable;

