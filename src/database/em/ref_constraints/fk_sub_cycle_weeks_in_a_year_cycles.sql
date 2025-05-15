alter table em.sub_cycle_weeks_in_a_year
    add constraint fk_sub_cycle_weeks_in_a_year_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"47d2ba1689dea7ab05ea81c33b23518a87cc1e3c","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_WEEKS_IN_A_YEAR_CYCLES","schemaName":"EM","sxml":""}