alter table em.group_restrictions
    add constraint fk_group_restrictions_groups_1
        foreign key ( group_id )
            references em.groups ( id )
        enable;


-- sqlcl_snapshot {"hash":"04c0cc43e34de587d1c8d47a2ebd36fe354da574","type":"REF_CONSTRAINT","name":"FK_GROUP_RESTRICTIONS_GROUPS_1","schemaName":"EM","sxml":""}