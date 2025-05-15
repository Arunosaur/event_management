-- liquibase formatted sql
-- changeset EM:1747280887578 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_weeks_in_a_month_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_weeks_in_a_month_cycles.sql:null:1662276c1b0759353599bfaf57a002ad69fa2f26:create

alter table em.sub_cycle_weeks_in_a_month
    add constraint fk_sub_cycle_weeks_in_a_month_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

