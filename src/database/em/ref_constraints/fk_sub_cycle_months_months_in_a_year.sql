alter table em.sub_cycle_months
    add constraint fk_sub_cycle_months_months_in_a_year
        foreign key ( month_id )
            references em.months_in_a_year ( id )
        enable;


-- sqlcl_snapshot {"hash":"fbb7d3d82977d95ac968f70923da688d5233680a","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_MONTHS_MONTHS_IN_A_YEAR","schemaName":"EM","sxml":""}