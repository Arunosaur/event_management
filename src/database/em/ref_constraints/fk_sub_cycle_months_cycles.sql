alter table em.sub_cycle_months
    add constraint fk_sub_cycle_months_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"93584d20b1da0b8643e80062590de570706b2e82","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_MONTHS_CYCLES","schemaName":"EM","sxml":""}