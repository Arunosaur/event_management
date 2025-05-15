-- liquibase formatted sql
-- changeset EM:1747280887463 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_interval_conversions_interval_measures_1.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_interval_conversions_interval_measures_1.sql:null:82d8cff149c123afe2ff234530ccf05598ddd783:create

alter table em.interval_conversions
    add constraint fk_interval_conversions_interval_measures_1
        foreign key ( measure_id )
            references em.interval_measures ( id )
        enable;

