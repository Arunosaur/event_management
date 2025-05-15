-- liquibase formatted sql
-- changeset EM:1747280887285 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_logs_event_queues.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_logs_event_queues.sql:null:7e35e583eca7296036682e4ab54766b77a937425:create

alter table em.event_logs
    add constraint fk_event_logs_event_queues
        foreign key ( queue_id )
            references em.event_queues ( id )
        enable;

