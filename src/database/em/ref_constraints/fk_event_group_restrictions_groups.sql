alter table em.event_group_restrictions
    add constraint fk_event_group_restrictions_groups
        foreign key ( restricted_group_id )
            references em.groups ( id )
        enable;


-- sqlcl_snapshot {"hash":"5c4dc8d8b07dd6b66e5f568a71ebe30c0e48b99d","type":"REF_CONSTRAINT","name":"FK_EVENT_GROUP_RESTRICTIONS_GROUPS","schemaName":"EM","sxml":""}