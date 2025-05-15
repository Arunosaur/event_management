alter table em.sub_cycle_weeks_in_a_month
    add constraint fk_sub_cycle_weeks_in_a_month_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"1662276c1b0759353599bfaf57a002ad69fa2f26","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_WEEKS_IN_A_MONTH_CYCLES","schemaName":"EM","sxml":""}