-- liquibase formatted sql
-- changeset EM:1747280887294 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_event_parameters_data_types.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_event_parameters_data_types.sql:null:91ca7ff1b594ffab3f12769a76dcbbb87e109573:create

alter table em.event_parameters
    add constraint fk_event_parameters_data_types
        foreign key ( data_type_id )
            references em.data_types ( id )
        enable;

