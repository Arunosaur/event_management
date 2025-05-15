-- liquibase formatted sql
-- changeset EM:1747280887755 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/event_parameters.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/event_parameters.sql:null:edf9daa1e20f3fbadf099542be0440b941ed5b70:create

create table em.event_parameters (
    event_definition_id number(38, 0) not null enable,
    sequence            number(4, 0) not null enable,
    parameter_name      varchar2(128 byte) not null enable,
    data_type_id        number(2, 0) not null enable,
    parameter_size      varchar2(10 byte),
    parameter_type      varchar2(10 byte),
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.event_parameters
    add constraint pk_event_parameters primary key ( event_definition_id,
                                                     sequence )
        using index enable;

