-- liquibase formatted sql
-- changeset EM:1747280888038 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/organizations.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/organizations.sql:null:8f59774cf565b274406ec6377947cf87483ec165:create

create table em.organizations (
    id               number(5, 0) not null enable,
    type             number(3, 0) not null enable,
    code             varchar2(8 byte) not null enable,
    short_nm         varchar2(5 byte) not null enable,
    name             varchar2(40 byte) not null enable,
    parent_id        number(5, 0),
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.organizations
    add constraint pk_organizations primary key ( id )
        using index enable;

alter table em.organizations add constraint uk_organizations_1 unique ( code )
    using index enable;

alter table em.organizations add constraint uk_organizations_2 unique ( short_nm )
    using index enable;

