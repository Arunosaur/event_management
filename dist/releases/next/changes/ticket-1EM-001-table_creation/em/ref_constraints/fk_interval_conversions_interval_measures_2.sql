-- liquibase formatted sql
-- changeset EM:1747280887471 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_interval_conversions_interval_measures_2.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_interval_conversions_interval_measures_2.sql:null:a0c265611f5828d0b8324fbf016ca635ad77dbdf:create

alter table em.interval_conversions
    add constraint fk_interval_conversions_interval_measures_2
        foreign key ( converted_measure_id )
            references em.interval_measures ( id )
        enable;

