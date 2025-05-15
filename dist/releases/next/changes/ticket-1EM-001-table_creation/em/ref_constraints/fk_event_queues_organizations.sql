-- liquibase formatted sql
-- changeset EM:1747280887338 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_queues_organizations.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_queues_organizations.sql:null:4f10db352513d86fea78971dcd33f13248e33616:create

alter table em.event_queues
    add constraint fk_event_queues_organizations
        foreign key ( organization_id )
            references em.organizations ( id )
        enable;

