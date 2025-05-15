-- liquibase formatted sql
-- changeset EM:1747280887455 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_helper_sql_headers_helper_sql_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_helper_sql_headers_helper_sql_types.sql:null:b274b37df684f0dfb33791f6834277bda8af39a0:create

alter table em.helper_sql_headers
    add constraint fk_helper_sql_headers_helper_sql_types
        foreign key ( type )
            references em.helper_sql_types ( id )
        enable;

