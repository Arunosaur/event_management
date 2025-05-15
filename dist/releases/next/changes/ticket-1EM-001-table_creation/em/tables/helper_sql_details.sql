-- liquibase formatted sql
-- changeset EM:1747280887881 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/helper_sql_details.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/helper_sql_details.sql:null:bc71ce7245aba31359121c78438c4b7035a4716f:create

create table em.helper_sql_details (
    header_id        number(5, 0) not null enable,
    id               number(3, 0) not null enable,
    sql_text         clob not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.helper_sql_details
    add constraint pk_helper_sql_details primary key ( header_id,
                                                       id )
        using index enable;

