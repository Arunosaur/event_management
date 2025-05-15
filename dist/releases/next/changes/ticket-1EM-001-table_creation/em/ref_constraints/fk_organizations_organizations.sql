-- liquibase formatted sql
-- changeset EM:1747280887487 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_organizations_organizations.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_organizations_organizations.sql:null:abd7959da15757db83f177e056d8afe275d22f84:create

alter table em.organizations
    add constraint fk_organizations_organizations
        foreign key ( parent_id )
            references em.organizations ( id )
        enable;

