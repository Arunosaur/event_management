-- liquibase formatted sql
-- changeset EM:1747280887521 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_days_in_an_year_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_days_in_an_year_cycles.sql:null:8137768aa618048a630247829d42511c08f61cd5:create

alter table em.sub_cycle_days_in_an_year
    add constraint fk_sub_cycle_days_in_an_year_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

