alter table em.sub_cycle_generics
    add constraint fk_sub_cycle_generics
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;


-- sqlcl_snapshot {"hash":"70107a3d9ae0032ec51cee35fea77fb5fc100292","type":"REF_CONSTRAINT","name":"FK_SUB_CYCLE_GENERICS","schemaName":"EM","sxml":""}