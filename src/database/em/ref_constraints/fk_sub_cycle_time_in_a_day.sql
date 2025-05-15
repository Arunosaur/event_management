alter table em.sub_cycle_time_in_a_day
    add constraint fk_sub_cycle_time_in_a_day
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"acbe6d2ecaa45dd025e268244e1acfe8fec314be","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_TIME_IN_A_DAY","schemaName":"EM","sxml":""}