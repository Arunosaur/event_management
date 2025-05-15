-- liquibase formatted sql
-- changeset EM:1747280887570 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_time_in_a_day.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_time_in_a_day.sql:null:acbe6d2ecaa45dd025e268244e1acfe8fec314be:create

alter table em.sub_cycle_time_in_a_day
    add constraint fk_sub_cycle_time_in_a_day
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

