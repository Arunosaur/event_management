-- liquibase formatted sql
-- changeset EM:1747280887804 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_restrictions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_restrictions.sql:null:f13b62d76c482fd0b233d3e084540317d075875e:create

create table em.event_restrictions (
    event_id            number(38, 0) not null enable,
    restricted_event_id number(38, 0) not null enable,
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.event_restrictions
    add constraint pk_event_restrictions primary key ( event_id,
                                                       restricted_event_id )
        using index enable;

