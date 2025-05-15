-- liquibase formatted sql
-- changeset EM:1747280887965 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/interval_measures.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/interval_measures.sql:null:3fadc6586e2cc80ea5a3be178796e181e32205f2:create

create table em.interval_measures (
    id               number(1, 0) not null enable,
    symbol           varchar2(7 byte) not null enable,
    description      varchar2(7 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.interval_measures
    add constraint pk_interval_measures primary key ( id )
        using index enable;

alter table em.interval_measures add constraint uk_interval_measures unique ( symbol )
    using index enable;

