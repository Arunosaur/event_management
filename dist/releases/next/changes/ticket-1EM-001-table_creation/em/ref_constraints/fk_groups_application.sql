-- liquibase formatted sql
-- changeset EM:1747280887420 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_groups_application.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_groups_application.sql:null:dff677adbf20c35b74307afe7287ec3099f3c617:create

alter table em.groups
    add constraint fk_groups_application
        foreign key ( application_id )
            references em.applications ( id )
        enable;

