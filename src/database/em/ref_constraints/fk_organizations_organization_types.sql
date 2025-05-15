alter table em.organizations
    add constraint fk_organizations_organization_types
        foreign key ( type )
            references em.organization_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"b207376d65fdc1e342a117363e1d218a631fc5bf","type":"REF_CONSTRAINT","name":"FK_ORGANIZATIONS_ORGANIZATION_TYPES","schemaName":"EM","sxml":""}