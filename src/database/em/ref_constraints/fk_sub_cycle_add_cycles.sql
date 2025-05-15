alter table em.sub_cycle_add
    add constraint fk_sub_cycle_add_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"1f6ae6dcccaddfb187db870edddb0d0dddab48e9","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_ADD_CYCLES","schemaName":"EM","sxml":""}