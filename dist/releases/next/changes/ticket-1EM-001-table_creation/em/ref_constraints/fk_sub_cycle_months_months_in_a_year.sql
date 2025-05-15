-- liquibase formatted sql
-- changeset EM:1747280887562 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_months_months_in_a_year.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_months_months_in_a_year.sql:null:fbb7d3d82977d95ac968f70923da688d5233680a:create

alter table em.sub_cycle_months
    add constraint fk_sub_cycle_months_months_in_a_year
        foreign key ( month_id )
            references em.months_in_a_year ( id )
        enable;

