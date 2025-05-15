alter table em.event_group_organization_defaults
    add constraint fk_event_group_organization_defaults_organizations
        foreign key ( organization_id )
            references em.organizations ( id )
        enable;


-- sqlcl_snapshot {"hash":"78b602d84a05a88dcbe0b30bc1dfcf30593e1f85","type":"REF_CONSTRAINT","name":"FK_EVENT_GROUP_ORGANIZATION_DEFAULTS_ORGANIZATIONS","schemaName":"EM","sxml":""}