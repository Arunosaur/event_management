-- liquibase formatted sql
-- changeset EM:1747280887496 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_add_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_add_cycles.sql:null:1f6ae6dcccaddfb187db870edddb0d0dddab48e9:create

alter table em.sub_cycle_add
    add constraint fk_sub_cycle_add_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

