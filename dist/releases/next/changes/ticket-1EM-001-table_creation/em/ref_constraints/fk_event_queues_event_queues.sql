-- liquibase formatted sql
-- changeset EM:1747280887321 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_queues_event_queues.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_queues_event_queues.sql:null:b5db4ece30aeb84fa6cf6729b7b5bdd6c71e1775:create

alter table em.event_queues
    add constraint fk_event_queues_event_queues
        foreign key ( previous_id )
            references em.event_queues ( id )
        enable;

