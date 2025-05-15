-- liquibase formatted sql
-- changeset EM:1747280887705 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_group_organization_defaults.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_group_organization_defaults.sql:null:166c2e9f6a78dd02bc649c231cc2a3b30f125e30:create

create table em.event_group_organization_defaults (
    group_id            number(38, 0) not null enable,
    event_definition_id number(38, 0) not null enable,
    parameter_sequence  number(4, 0) not null enable,
    organization_id     number(5, 0) not null enable,
    value               clob not null enable,
    create_user_id      varchar2(128 byte) not null enable,
    create_date         date default current_date not null enable,
    last_update_user_id varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.event_group_organization_defaults
    add constraint pk_event_group_organization_defaults
        primary key ( group_id,
                      event_definition_id,
                      parameter_sequence,
                      organization_id )
            using index enable;

