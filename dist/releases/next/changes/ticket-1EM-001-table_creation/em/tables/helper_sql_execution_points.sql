-- liquibase formatted sql
-- changeset EM:1747280887899 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/helper_sql_execution_points.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/helper_sql_execution_points.sql:null:72c9fdfd15706ca0950616134363a47cd3bd4d3e:create

create table em.helper_sql_execution_points (
    id               number(1, 0) not null enable,
    description      varchar2(5 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.helper_sql_execution_points
    add constraint pk_helper_sql_execution_points primary key ( id )
        using index enable;

