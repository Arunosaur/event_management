-- liquibase formatted sql
-- changeset EM:1747280887600 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/applications.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/applications.sql:null:2dae9fac3f90768fb2a968da2c1e90c394d38841:create

create table em.applications (
    id               number(5, 0) not null enable,
    code             varchar2(8 byte) not null enable,
    name             varchar2(40 byte) not null enable,
    description      varchar2(200 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.applications
    add constraint pk_applications primary key ( id )
        using index enable;

alter table em.applications add constraint uk_applications unique ( code )
    using index enable;

