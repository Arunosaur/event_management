-- liquibase formatted sql
-- changeset EM:1747280887187 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/indexes/fbi_event_definitions_01.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/indexes/fbi_event_definitions_01.sql:null:0a3d1b0368e2d22dbd02d168bfb1f81f6d1f58b0:create

create unique index em.fbi_event_definitions_01 on
    em.event_definitions ( upper(procedure_name) );

