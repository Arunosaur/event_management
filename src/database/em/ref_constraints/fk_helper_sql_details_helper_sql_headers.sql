alter table em.helper_sql_details
    add constraint fk_helper_sql_details_helper_sql_headers
        foreign key ( header_id )
            references em.helper_sql_headers ( id )
        enable;


-- sqlcl_snapshot {"hash":"89e44c4802141b7436d3499d7f3bb09edc848aba","type":"REF_CONSTRAINT","name":"FK_HELPER_SQL_DETAILS_HELPER_SQL_HEADERS","schemaName":"EM","sxml":""}