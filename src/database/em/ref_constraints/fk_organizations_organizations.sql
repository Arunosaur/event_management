alter table em.organizations
    add constraint fk_organizations_organizations
        foreign key ( parent_id )
            references em.organizations ( id )
        enable;


-- sqlcl_snapshot {"hash":"abd7959da15757db83f177e056d8afe275d22f84","type":"REF_CONSTRAINT","name":"FK_ORGANIZATIONS_ORGANIZATIONS","schemaName":"EM","sxml":""}