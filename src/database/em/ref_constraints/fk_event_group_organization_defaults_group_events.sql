alter table em.event_group_organization_defaults
    add constraint fk_event_group_organization_defaults_group_events
        foreign key ( group_id,
                      event_definition_id )
            references em.group_events ( group_id,
                                         event_definition_id )
        enable;


-- sqlcl_snapshot {"hash":"13bd4ec6cdaf6b402c040475e2d74ac47589b410","type":"REF_CONSTRAINT","name":"FK_EVENT_GROUP_ORGANIZATION_DEFAULTS_GROUP_EVENTS","schemaName":"EM","sxml":""}