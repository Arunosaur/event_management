-- liquibase formatted sql
-- changeset EM:1747280887554 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_months_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_months_cycles.sql:null:93584d20b1da0b8643e80062590de570706b2e82:create

alter table em.sub_cycle_months
    add constraint fk_sub_cycle_months_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

