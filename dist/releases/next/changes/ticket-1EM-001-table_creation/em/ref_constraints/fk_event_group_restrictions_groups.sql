-- liquibase formatted sql
-- changeset EM:1747280887277 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_group_restrictions_groups.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_group_restrictions_groups.sql:null:5c4dc8d8b07dd6b66e5f568a71ebe30c0e48b99d:create

alter table em.event_group_restrictions
    add constraint fk_event_group_restrictions_groups
        foreign key ( restricted_group_id )
            references em.groups ( id )
        enable;

