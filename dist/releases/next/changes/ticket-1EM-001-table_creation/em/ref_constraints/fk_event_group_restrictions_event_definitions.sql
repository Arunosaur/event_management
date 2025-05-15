-- liquibase formatted sql
-- changeset EM:1747280887268 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_group_restrictions_event_definitions.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_group_restrictions_event_definitions.sql:null:a7b8914c1e9f6e3bf390282273edca1ef1cc9ea9:create

alter table em.event_group_restrictions
    add constraint fk_event_group_restrictions_event_definitions
        foreign key ( event_id )
            references em.event_definitions ( id )
        enable;

