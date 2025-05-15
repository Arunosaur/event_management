-- liquibase formatted sql
-- changeset EM:1747280887772 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_queue_status.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_queue_status.sql:null:2712189e2a9d919eb14f0740248c41c0dd02956c:create

create table em.event_queue_status (
    id               number(3, 0) not null enable,
    description      varchar2(40 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.event_queue_status
    add constraint pk_event_queue_status primary key ( id )
        using index enable;

