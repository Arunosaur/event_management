-- liquibase formatted sql
-- changeset EM:1747280887988 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/months_in_a_year.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/months_in_a_year.sql:null:482aab7b0e79fbfe6e6f6c67641ce6291a1cc8a1:create

create table em.months_in_a_year (
    id               number(2, 0) not null enable,
    code             varchar2(3 byte) not null enable,
    description      varchar2(9 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.months_in_a_year
    add constraint pk_months_in_a_year primary key ( id )
        using index enable;

alter table em.months_in_a_year add constraint uk_months_in_a_year unique ( code )
    using index enable;

