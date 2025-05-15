alter table em.event_restrictions
    add constraint fk_event_restrictions_event_definitions_2
        foreign key ( restricted_event_id )
            references em.event_definitions ( id )
        enable;


-- sqlcl_snapshot {"hash":"7ef4087e4a390b1e2dd3651a76dcdcd9649bab67","type":"REF_CONSTRAINT","name":"FK_EVENT_RESTRICTIONS_EVENT_DEFINITIONS_2","schemaName":"EM","sxml":""}