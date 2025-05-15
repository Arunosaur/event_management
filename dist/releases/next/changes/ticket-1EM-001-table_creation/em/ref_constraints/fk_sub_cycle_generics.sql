-- liquibase formatted sql
-- changeset EM:1747280887545 stripComments:false logicalFilePath:ticket-1EM-001-table_creation/em/ref_constraints/fk_sub_cycle_generics.sql runAlways:false runOnChange:false replaceIfExists:true failOnError:true
-- sqlcl_snapshot src/database/em/ref_constraints/fk_sub_cycle_generics.sql:null:70107a3d9ae0032ec51cee35fea77fb5fc100292:create

alter table em.sub_cycle_generics
    add constraint fk_sub_cycle_generics
        foreign key ( cycle_id )
            references em.cycles ( id )
        enable;

