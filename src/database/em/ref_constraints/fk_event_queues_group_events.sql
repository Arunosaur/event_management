alter table em.event_queues
    add constraint fk_event_queues_group_events
        foreign key ( group_id,
                      event_definition_id )
            references em.group_events ( group_id,
                                         event_definition_id )
        enable;


-- sqlcl_snapshot {"hash":"97e76e4023cb59bf38da222695bf80fb815b4a6e","type":"REF_CONSTRAINT","name":"FK_EVENT_QUEUES_GROUP_EVENTS","schemaName":"EM","sxml":""}