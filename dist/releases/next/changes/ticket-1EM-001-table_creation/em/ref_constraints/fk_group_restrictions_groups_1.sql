-- liquibase formatted sql
-- changeset EM:1747280887403 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_group_restrictions_groups_1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_group_restrictions_groups_1.sql:null:04c0cc43e34de587d1c8d47a2ebd36fe354da574:create

alter table em.group_restrictions
    add constraint fk_group_restrictions_groups_1
        foreign key ( group_id )
            references em.groups ( id )
        enable;

