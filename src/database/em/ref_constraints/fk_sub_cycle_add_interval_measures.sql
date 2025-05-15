alter table em.sub_cycle_add
    add constraint fk_sub_cycle_add_interval_measures
        foreign key ( interval_id )
            references em.interval_measures ( id )
        enable;


-- sqlcl_snapshot {"hash":"88b820d431a29dce39b6b40f56459210bce1f029","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_ADD_INTERVAL_MEASURES","schemaName":"EM","sxml":""}