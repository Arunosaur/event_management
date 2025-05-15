-- liquibase formatted sql
-- changeset EM:1747280887368 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_group_event_restrictions_event_definition.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_group_event_restrictions_event_definition.sql:null:326be9487478058c063df8bb14150432c071eacf:create

alter table em.group_event_restrictions
    add constraint fk_group_event_restrictions_event_definition
        foreign key ( restricted_event_id )
            references em.event_definitions ( id )
        enable;

