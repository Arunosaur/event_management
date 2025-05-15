-- liquibase formatted sql
-- changeset EM:1747280887587 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_weeks_in_a_year_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_weeks_in_a_year_cycles.sql:null:47d2ba1689dea7ab05ea81c33b23518a87cc1e3c:create

alter table em.sub_cycle_weeks_in_a_year
    add constraint fk_sub_cycle_weeks_in_a_year_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

