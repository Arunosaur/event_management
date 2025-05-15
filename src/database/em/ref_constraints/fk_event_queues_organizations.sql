alter table em.event_queues
    add constraint fk_event_queues_organizations
        foreign key ( organization_id )
            references em.organizations ( id )
        enable;


-- sqlcl_snapshot {"hash":"4f10db352513d86fea78971dcd33f13248e33616","type":"REF_CONSTRAINT","name":"FK_EVENT_QUEUES_ORGANIZATIONS","schemaName":"EM","sxml":""}