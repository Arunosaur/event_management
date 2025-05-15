alter table em.event_queues
    add constraint fk_event_queues_event_queue_status
        foreign key ( status_id )
            references em.event_queue_status ( id )
        enable;


-- sqlcl_snapshot {"hash":"3340e7c167ed597a69d8db232edd3e74a86c891d","type":"REF_CONSTRAINT","name":"FK_EVENT_QUEUES_EVENT_QUEUE_STATUS","schemaName":"EM","sxml":""}