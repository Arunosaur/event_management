-- liquibase formatted sql
-- changeset EM:1747280887248 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_group_organization_defaults_group_events.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_group_organization_defaults_group_events.sql:null:13bd4ec6cdaf6b402c040475e2d74ac47589b410:create

alter table em.event_group_organization_defaults
    add constraint fk_event_group_organization_defaults_group_events
        foreign key ( group_id,
                      event_definition_id )
            references em.group_events ( group_id,
                                         event_definition_id )
        enable;

