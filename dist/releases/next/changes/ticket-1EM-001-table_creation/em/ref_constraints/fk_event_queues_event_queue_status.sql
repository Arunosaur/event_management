-- liquibase formatted sql
-- changeset EM:1747280887312 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_queues_event_queue_status.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_queues_event_queue_status.sql:null:3340e7c167ed597a69d8db232edd3e74a86c891d:create

alter table em.event_queues
    add constraint fk_event_queues_event_queue_status
        foreign key ( status_id )
            references em.event_queue_status ( id )
        enable;

