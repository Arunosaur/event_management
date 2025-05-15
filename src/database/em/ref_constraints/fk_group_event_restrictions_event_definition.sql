alter table em.group_event_restrictions
    add constraint fk_group_event_restrictions_event_definition
        foreign key ( restricted_event_id )
            references em.event_definitions ( id )
        enable;


-- sqlcl_snapshot {"hash":"326be9487478058c063df8bb14150432c071eacf","type":"REF_CONSTRAINT","name":"FK_GROUP_EVENT_RESTRICTIONS_EVENT_DEFINITION","schemaName":"EM","sxml":""}