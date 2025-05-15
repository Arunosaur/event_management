alter table em.event_logs
    add constraint fk_event_logs_event_queues
        foreign key ( queue_id )
            references em.event_queues ( id )
        enable;


-- sqlcl_snapshot {"hash":"7e35e583eca7296036682e4ab54766b77a937425","type":"REF_CONSTRAINT","name":"FK_EVENT_LOGS_EVENT_QUEUES","schemaName":"EM","sxml":""}