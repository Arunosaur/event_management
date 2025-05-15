-- liquibase formatted sql
-- changeset EM:1747280887529 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_days_of_the_week_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_days_of_the_week_cycles.sql:null:a7ecf89a422fd759e8fad71ccda46dbdcee9b137:create

alter table em.sub_cycle_days_of_the_week
    add constraint fk_sub_cycle_days_of_the_week_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

