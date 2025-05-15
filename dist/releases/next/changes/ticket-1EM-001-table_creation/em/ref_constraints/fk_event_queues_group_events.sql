-- liquibase formatted sql
-- changeset EM:1747280887329 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_queues_group_events.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_queues_group_events.sql:null:97e76e4023cb59bf38da222695bf80fb815b4a6e:create

alter table em.event_queues
    add constraint fk_event_queues_group_events
        foreign key ( group_id,
                      event_definition_id )
            references em.group_events ( group_id,
                                         event_definition_id )
        enable;

