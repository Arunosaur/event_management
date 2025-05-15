-- liquibase formatted sql
-- changeset EM:1747280887236 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_group_organization_defaults_event_parameters.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_group_organization_defaults_event_parameters.sql:null:7ce025a19f556edea842fde1c39ee3838856a10a:create

alter table em.event_group_organization_defaults
    add constraint fk_event_group_organization_defaults_event_parameters
        foreign key ( event_definition_id,
                      parameter_sequence )
            references em.event_parameters ( event_definition_id,
                                             sequence )
        enable;

