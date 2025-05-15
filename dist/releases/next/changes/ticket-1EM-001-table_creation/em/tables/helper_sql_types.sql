-- liquibase formatted sql
-- changeset EM:1747280887930 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/helper_sql_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/helper_sql_types.sql:null:d6010bd234fdf15ad04b454898510ff03bc88a86:create

create table em.helper_sql_types (
    id               number(3, 0) not null enable,
    description      varchar2(20 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.helper_sql_types
    add constraint pk_helper_sql_types primary key ( id )
        using index enable;

