alter table em.interval_conversions
    add constraint fk_interval_conversions_interval_measures_2
        foreign key ( converted_measure_id )
            references em.interval_measures ( id )
        enable;


-- sqlcl_snapshot {"hash":"a0c265611f5828d0b8324fbf016ca635ad77dbdf","type":"REF_CONSTRAINT","name":"FK_INTERVAL_CONVERSIONS_INTERVAL_MEASURES_2","schemaName":"EM","sxml":""}