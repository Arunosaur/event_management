-- liquibase formatted sql
-- changeset EM:1747280887427 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_groups_cycle.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_groups_cycle.sql:null:e2976572c57c1d3343fed6e84a0d2d236539e329:create

alter table em.groups
    add constraint fk_groups_cycle
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

