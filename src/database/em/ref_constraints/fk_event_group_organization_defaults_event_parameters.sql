alter table em.event_group_organization_defaults
    add constraint fk_event_group_organization_defaults_event_parameters
        foreign key ( event_definition_id,
                      parameter_sequence )
            references em.event_parameters ( event_definition_id,
                                             sequence )
        enable;


-- sqlcl_snapshot {"hash":"7ce025a19f556edea842fde1c39ee3838856a10a","type":"REF_CONSTRAINT","name":"FK_EVENT_GROUP_ORGANIZATION_DEFAULTS_EVENT_PARAMETERS","schemaName":"EM","sxml":""}