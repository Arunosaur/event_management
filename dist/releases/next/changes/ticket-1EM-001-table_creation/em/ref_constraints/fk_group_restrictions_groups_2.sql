-- liquibase formatted sql
-- changeset EM:1747280887412 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_group_restrictions_groups_2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_group_restrictions_groups_2.sql:null:d615140615a56e711dc7cd24e8e4a99eb71b9729:create

alter table em.group_restrictions
    add constraint fk_group_restrictions_groups_2
        foreign key ( restricted_group_id )
            references em.groups ( id )
        enable;

