-- liquibase formatted sql
-- changeset EM:1747280887915 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/helper_sql_headers.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/helper_sql_headers.sql:null:02b6fb9bbe2b42abd0e493204221744b17228ea8:create

create table em.helper_sql_headers (
    id                 number(5, 0) not null enable,
    type               number(3, 0) not null enable,
    execution_point_id number(1, 0) not null enable,
    reference_id       number(38, 0) not null enable,
    sub_reference_id   number(38, 0),
    user_id            varchar2(128 byte) not null enable,
    last_change_date   date default current_date not null enable
);

alter table em.helper_sql_headers
    add constraint pk_helper_sql_headers primary key ( id )
        using index enable;

