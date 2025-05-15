alter table em.group_events
    add constraint fk_group_events_groups
        foreign key ( group_id )
            references em.groups ( id )
        enable;


-- sqlcl_snapshot {"hash":"cd50c8324b2ec0d8a7fe9d48839298e7f34dacdb","type":"REF_CONSTRAINT","name":"FK_GROUP_EVENTS_GROUPS","schemaName":"EM","sxml":""}