-- liquibase formatted sql
-- changeset EM:1747280887210 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/indexes/unq_event_definitions_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/indexes/unq_event_definitions_01.sql:null:76226b749848011329d6191d60f9aad16324293a:create

create unique index em.unq_event_definitions_01 on
    em.event_definitions (
        description,
        procedure_name
    );

