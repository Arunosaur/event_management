-- liquibase formatted sql
-- changeset EM:1747280887223 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/indexes/unq_groups_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/indexes/unq_groups_01.sql:null:c8c21fdeea4a2a127687e2e608360d1783199ccd:create

create unique index em.unq_groups_01 on
    em.groups (
        description
    );

