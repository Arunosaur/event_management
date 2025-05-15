-- liquibase formatted sql
-- changeset EM:1747280887385 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_group_events_event_definitions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_group_events_event_definitions.sql:null:bca2363f645b1030a5bb813fcb0cdc39165feec9:create

alter table em.group_events
    add constraint fk_group_events_event_definitions
        foreign key ( event_definition_id )
            references em.event_definitions ( id )
        enable;

