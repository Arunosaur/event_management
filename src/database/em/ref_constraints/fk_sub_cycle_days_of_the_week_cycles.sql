alter table em.sub_cycle_days_of_the_week
    add constraint fk_sub_cycle_days_of_the_week_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"a7ecf89a422fd759e8fad71ccda46dbdcee9b137","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_DAYS_OF_THE_WEEK_CYCLES","schemaName":"EM","sxml":""}