-- liquibase formatted sql
-- changeset EM:1747280887395 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_group_events_groups.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_group_events_groups.sql:null:cd50c8324b2ec0d8a7fe9d48839298e7f34dacdb:create

alter table em.group_events
    add constraint fk_group_events_groups
        foreign key ( group_id )
            references em.groups ( id )
        enable;

