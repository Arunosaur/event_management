alter table em.group_restrictions
    add constraint fk_group_restrictions_groups_2
        foreign key ( restricted_group_id )
            references em.groups ( id )
        enable;


-- sqlcl_snapshot {"hash":"d615140615a56e711dc7cd24e8e4a99eb71b9729","type":"REF_CONSTRAINT","name":"FK_GROUP_RESTRICTIONS_GROUPS_2","schemaName":"EM","sxml":""}