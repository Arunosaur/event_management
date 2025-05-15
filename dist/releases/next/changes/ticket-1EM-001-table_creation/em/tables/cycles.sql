-- liquibase formatted sql
-- changeset EM:1747280887624 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/cycles.sql:null:6a18fcc743a682bf19ea33c1ea16f6fb75c6dff8:create

create table em.cycles (
    id               number(5, 0) not null enable,
    code             varchar2(20 byte) not null enable,
    description      varchar2(80 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.cycles
    add constraint pk_cycles primary key ( id )
        using index enable;

alter table em.cycles add constraint uk_cycles unique ( code )
    using index enable;

