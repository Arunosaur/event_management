alter table em.sub_cycle_days_in_an_year
    add constraint fk_sub_cycle_days_in_an_year_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"8137768aa618048a630247829d42511c08f61cd5","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_DAYS_IN_AN_YEAR_CYCLES","schemaName":"EM","sxml":""}