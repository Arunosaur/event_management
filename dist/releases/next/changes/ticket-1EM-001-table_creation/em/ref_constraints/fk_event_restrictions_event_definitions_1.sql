-- liquibase formatted sql
-- changeset EM:1747280887348 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_restrictions_event_definitions_1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_restrictions_event_definitions_1.sql:null:6aa50dd5323196d2f3632e85f6f3670d91e6aa3e:create

alter table em.event_restrictions
    add constraint fk_event_restrictions_event_definitions_1
        foreign key ( event_id )
            references em.event_definitions ( id )
        enable;

