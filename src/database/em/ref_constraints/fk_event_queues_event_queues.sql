alter table em.event_queues
    add constraint fk_event_queues_event_queues
        foreign key ( previous_id )
            references em.event_queues ( id )
        enable;


-- sqlcl_snapshot {"hash":"b5db4ece30aeb84fa6cf6729b7b5bdd6c71e1775","type":"REF_CONSTRAINT","name":"FK_EVENT_QUEUES_EVENT_QUEUES","schemaName":"EM","sxml":""}