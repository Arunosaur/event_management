alter table em.event_parameters
    add constraint fk_event_parameters_data_types
        foreign key ( data_type_id )
            references em.data_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"91ca7ff1b594ffab3f12769a76dcbbb87e109573","type":"REF_CONSTRAINT","name":"FK_EVENT_PARAMETERS_DATA_TYPES","schemaName":"EM","sxml":""}