alter table em.sub_cycle_days_of_the_week
    add constraint fk_sub_cycle_days_of_the_week_days_of_the_week
        foreign key ( day_id )
            references em.days_of_the_week ( id )
        enable;


-- sqlcl_snapshot {"hash":"0b2be2868df50fa13e8a34ae0348c224967194ae","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_DAYS_OF_THE_WEEK_DAYS_OF_THE_WEEK","schemaName":"EM","sxml":""}