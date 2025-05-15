-- liquibase formatted sql
-- changeset EM:1747280887648 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/data_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/data_types.sql:null:5f6b3bf86d5554d3f27430da81087c86148b946a:create

create table em.data_types (
    id               number(4, 0) not null enable,
    description      varchar2(40 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.data_types
    add constraint pk_data_types primary key ( id )
        using index enable;

