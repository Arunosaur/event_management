-- liquibase formatted sql
-- changeset EM:1747280887447 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_helper_sql_headers_helper_sql_execution_points.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_helper_sql_headers_helper_sql_execution_points.sql:null:3e0d1ebaf85c289b6de4b56c7fa1f5a4a463a81c:create

alter table em.helper_sql_headers
    add constraint fk_helper_sql_headers_helper_sql_execution_points
        foreign key ( execution_point_id )
            references em.helper_sql_execution_points ( id )
        enable;

