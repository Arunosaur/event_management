-- liquibase formatted sql
-- changeset EM:1747280887819 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/group_event_restrictions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/group_event_restrictions.sql:null:3b57f42d9c82b8fe96622f31e27047fb306a2754:create

create table em.group_event_restrictions (
    group_id            number(38, 0) not null enable,
    restricted_event_id number(38, 0) not null enable,
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.group_event_restrictions
    add constraint pk_group_event_restrictions primary key ( group_id,
                                                             restricted_event_id )
        using index enable;

