-- liquibase formatted sql
-- changeset EM:1747280887790 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_queues.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_queues.sql:null:85336c21172149fcf3097a2d1a1b8f54ee4da1a2:create

create table em.event_queues (
    id                  number(38, 0) not null enable,
    previous_id         number(38, 0),
    group_id            number(38, 0) not null enable,
    event_definition_id number(38, 0) not null enable,
    organization_id     number(5, 0) not null enable,
    value               clob,
    status_id           number(3, 0) not null enable,
    run_after_tm        date,
    create_user_id      varchar2(128 byte) not null enable,
    create_date         date default current_date not null enable,
    last_update_user_id varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.event_queues
    add constraint pk_event_queues primary key ( id )
        using index enable;

