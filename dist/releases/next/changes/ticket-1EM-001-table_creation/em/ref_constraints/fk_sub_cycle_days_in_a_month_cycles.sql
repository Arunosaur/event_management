-- liquibase formatted sql
-- changeset EM:1747280887512 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_days_in_a_month_cycles.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_days_in_a_month_cycles.sql:null:604085700d8f8834288aeb00b7a42d7bbbd0ec53:create

alter table em.sub_cycle_days_in_a_month
    add constraint fk_sub_cycle_days_in_a_month_cycles
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

