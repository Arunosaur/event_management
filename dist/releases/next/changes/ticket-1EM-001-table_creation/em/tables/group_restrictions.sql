-- liquibase formatted sql
-- changeset EM:1747280887849 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/tables/group_restrictions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/tables/group_restrictions.sql:null:6052925a9da5cbd16aa109089aa382a834f95f0e:create

create table em.group_restrictions (
    group_id            number(38, 0) not null enable,
    restricted_group_id number(38, 0) not null enable,
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.group_restrictions
    add constraint pk_group_restrictions primary key ( group_id,
                                                       restricted_group_id )
        using index enable;

