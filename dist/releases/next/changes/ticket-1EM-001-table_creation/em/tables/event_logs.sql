-- liquibase formatted sql
-- changeset EM:1747280887738 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_logs.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_logs.sql:null:593572c252cf534b7fe1a1c8eec152a0000b76c7:create

create table em.event_logs (
    queue_id  number(38, 0) not null enable,
    lap_id    number(4, 0) default 1 not null enable,
    message   varchar2(512 byte) not null enable,
    create_ts timestamp(6) not null enable,
    begin_ts  timestamp(6),
    end_ts    timestamp(6),
    finish_cd number(1, 0) not null enable
);

alter table em.event_logs
    add constraint pk_event_logs primary key ( queue_id,
                                               lap_id )
        using index enable;

