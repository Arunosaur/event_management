alter table em.groups
    add constraint fk_groups_cycle
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"e2976572c57c1d3343fed6e84a0d2d236539e329","type":"REF_CONSTRAINT","name":"FK_GROUPS_CYCLE","schemaName":"EM","sxml":""}