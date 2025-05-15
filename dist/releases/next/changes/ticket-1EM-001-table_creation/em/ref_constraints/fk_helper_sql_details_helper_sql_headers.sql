-- liquibase formatted sql
-- changeset EM:1747280887435 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_helper_sql_details_helper_sql_headers.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_helper_sql_details_helper_sql_headers.sql:null:89e44c4802141b7436d3499d7f3bb09edc848aba:create

alter table em.helper_sql_details
    add constraint fk_helper_sql_details_helper_sql_headers
        foreign key ( header_id )
            references em.helper_sql_headers ( id )
        enable;

