-- liquibase formatted sql
-- changeset EM:1747280887479 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_organizations_organization_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_organizations_organization_types.sql:null:b207376d65fdc1e342a117363e1d218a631fc5bf:create

alter table em.organizations
    add constraint fk_organizations_organization_types
        foreign key ( type )
            references em.organization_types ( id )
        enable;

