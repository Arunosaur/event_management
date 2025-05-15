-- liquibase formatted sql
-- changeset EM:1747280887258 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_group_organization_defaults_organizations.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_group_organization_defaults_organizations.sql:null:78b602d84a05a88dcbe0b30bc1dfcf30593e1f85:create

alter table em.event_group_organization_defaults
    add constraint fk_event_group_organization_defaults_organizations
        foreign key ( organization_id )
            references em.organizations ( id )
        enable;

