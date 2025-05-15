alter table em.event_group_restrictions
    add constraint fk_event_group_restrictions_event_definitions
        foreign key ( event_id )
            references em.event_definitions ( id )
        enable;


-- sqlcl_snapshot {"hash":"a7b8914c1e9f6e3bf390282273edca1ef1cc9ea9","type":"REF_CONSTRAINT","name":"FK_EVENT_GROUP_RESTRICTIONS_EVENT_DEFINITIONS","schemaName":"EM","sxml":""}