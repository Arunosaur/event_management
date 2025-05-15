-- liquibase formatted sql
-- changeset EM:1747280887666 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/days_of_the_week.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/days_of_the_week.sql:null:2ee43d8ba0662541ae60445786aef34c864f1af5:create

create table em.days_of_the_week (
    id               number(1, 0) not null enable,
    code             varchar2(3 byte) not null enable,
    description      varchar2(9 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.days_of_the_week
    add constraint pk_days_of_the_week primary key ( id )
        using index enable;

alter table em.days_of_the_week add constraint uk_days_of_the_week unique ( code )
    using index enable;

