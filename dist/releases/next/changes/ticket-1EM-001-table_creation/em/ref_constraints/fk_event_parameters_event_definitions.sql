-- liquibase formatted sql
-- changeset EM:1747280887303 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_parameters_event_definitions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_parameters_event_definitions.sql:null:648beeed5f6aa0c4740df846695ec3c14caad3a7:create

alter table em.event_parameters
    add constraint fk_event_parameters_event_definitions
        foreign key ( event_definition_id )
            references em.event_definitions ( id )
        enable;

