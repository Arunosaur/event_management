-- liquibase formatted sql
-- changeset EM:1747280887377 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_group_event_restrictions_groups.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_group_event_restrictions_groups.sql:null:4b123b800aeebac65a9156db5eeb3a5a203c7d1b:create

alter table em.group_event_restrictions
    add constraint fk_group_event_restrictions_groups
        foreign key ( group_id )
            references em.groups ( id )
        enable;

