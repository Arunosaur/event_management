-- liquibase formatted sql
-- changeset EM:1747280887504 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_add_interval_measures.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_add_interval_measures.sql:null:88b820d431a29dce39b6b40f56459210bce1f029:create

alter table em.sub_cycle_add
    add constraint fk_sub_cycle_add_interval_measures
        foreign key ( interval_id )
            references em.interval_measures ( id )
        enable;

