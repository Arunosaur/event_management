-- liquibase formatted sql
-- changeset EM:1747280887537 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_days_of_the_week_days_of_the_week.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_days_of_the_week_days_of_the_week.sql:null:0b2be2868df50fa13e8a34ae0348c224967194ae:create

alter table em.sub_cycle_days_of_the_week
    add constraint fk_sub_cycle_days_of_the_week_days_of_the_week
        foreign key ( day_id )
            references em.days_of_the_week ( id )
        enable;

