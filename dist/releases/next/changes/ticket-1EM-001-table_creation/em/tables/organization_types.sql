-- liquibase formatted sql
-- changeset EM:1747280888011 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/organization_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/organization_types.sql:null:4603d7c94ef7fa9841dba765b238b22e071d667e:create

create table em.organization_types (
    id               number(3, 0) not null enable,
    code             varchar2(8 byte) not null enable,
    description      varchar2(40 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.organization_types
    add constraint pk_organization_types primary key ( id )
        using index enable;

alter table em.organization_types add constraint uk_organization_types unique ( code )
    using index enable;

