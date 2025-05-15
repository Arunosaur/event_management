alter table em.group_event_restrictions
    add constraint fk_group_event_restrictions_groups
        foreign key ( group_id )
            references em.groups ( id )
        enable;


-- sqlcl_snapshot {"hash":"4b123b800aeebac65a9156db5eeb3a5a203c7d1b","type":"REF_CONSTRAINT","name":"FK_GROUP_EVENT_RESTRICTIONS_GROUPS","schemaName":"EM","sxml":""}