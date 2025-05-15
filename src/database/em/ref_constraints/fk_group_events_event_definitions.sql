alter table em.group_events
    add constraint fk_group_events_event_definitions
        foreign key ( event_definition_id )
            references em.event_definitions ( id )
        enable;


-- sqlcl_snapshot {"hash":"bca2363f645b1030a5bb813fcb0cdc39165feec9","type":"REF_CONSTRAINT","name":"FK_GROUP_EVENTS_EVENT_DEFINITIONS","schemaName":"EM","sxml":""}