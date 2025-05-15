alter table em.sub_cycle_days_in_a_month
    add constraint fk_sub_cycle_days_in_a_month_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"604085700d8f8834288aeb00b7a42d7bbbd0ec53","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_DAYS_IN_A_MONTH_CYCLES","schemaName":"EM","sxml":""}