alter table em.interval_conversions
    add constraint fk_interval_conversions_interval_measures_1
        foreign key ( measure_id )
            references em.interval_measures ( id )
        enable;


-- sqlcl_snapshot {"hash":"82d8cff149c123afe2ff234530ccf05598ddd783","type":"REF_CONSTRAINT","name":"FK_INTERVAL_CONVERSIONS_INTERVAL_MEASURES_1","schemaName":"EM","sxml":""}