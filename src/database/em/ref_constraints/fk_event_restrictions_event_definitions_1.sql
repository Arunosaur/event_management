alter table em.event_restrictions
    add constraint fk_event_restrictions_event_definitions_1
        foreign key ( event_id )
            references em.event_definitions ( id )
        enable;


-- sqlcl_snapshot {"hash":"6aa50dd5323196d2f3632e85f6f3670d91e6aa3e","type":"REF_CONSTRAINT","name":"FK_EVENT_RESTRICTIONS_EVENT_DEFINITIONS_1","schemaName":"EM","sxml":""}