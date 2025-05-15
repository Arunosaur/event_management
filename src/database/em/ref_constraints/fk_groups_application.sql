alter table em.groups
    add constraint fk_groups_application
        foreign key ( application_id )
            references em.applications ( id )
        enable;


-- sqlcl_snapshot {"hash":"dff677adbf20c35b74307afe7287ec3099f3c617","type":"REF_CONSTRAINT","name":"FK_GROUPS_APPLICATION","schemaName":"EM","sxml":""}