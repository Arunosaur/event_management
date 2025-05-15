-- liquibase formatted sql
-- changeset EM:1747280887721 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_group_restrictions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_group_restrictions.sql:null:be3550b9de53e9f64afdec271eb642c90e7d0266:create

create table em.event_group_restrictions (
    event_id            number(38, 0) not null enable,
    restricted_group_id number(38, 0) not null enable,
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.event_group_restrictions
    add constraint pk_event_group_restrictions primary key ( event_id,
                                                             restricted_group_id )
        using index enable;

