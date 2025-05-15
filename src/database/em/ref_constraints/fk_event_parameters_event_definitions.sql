alter table em.event_parameters
    add constraint fk_event_parameters_event_definitions
        foreign key ( event_definition_id )
            references em.event_definitions ( id )
        enable;


-- sqlcl_snapshot {"hash":"648beeed5f6aa0c4740df846695ec3c14caad3a7","type":"REF_CONSTRAINT","name":"FK_EVENT_PARAMETERS_EVENT_DEFINITIONS","schemaName":"EM","sxml":""}