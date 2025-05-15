-- liquibase formatted sql
-- changeset EM:1747280887357 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_restrictions_event_definitions_2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_restrictions_event_definitions_2.sql:null:7ef4087e4a390b1e2dd3651a76dcdcd9649bab67:create

alter table em.event_restrictions
    add constraint fk_event_restrictions_event_definitions_2
        foreign key ( restricted_event_id )
            references em.event_definitions ( id )
        enable;

