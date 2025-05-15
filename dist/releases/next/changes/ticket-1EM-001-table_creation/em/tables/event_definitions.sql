-- liquibase formatted sql
-- changeset EM:1747280887687 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_definitions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_definitions.sql:null:41729540b043cd9fcb74979074814e0b7d4019f3:create

create table em.event_definitions (
    id               number(38, 0) not null enable,
    description      varchar2(80 byte) not null enable,
    procedure_name   varchar2(512 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.event_definitions
    add constraint pk_event_definitions primary key ( id )
        using index enable;

