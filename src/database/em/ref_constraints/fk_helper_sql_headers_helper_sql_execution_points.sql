alter table em.helper_sql_headers
    add constraint fk_helper_sql_headers_helper_sql_execution_points
        foreign key ( execution_point_id )
            references em.helper_sql_execution_points ( id )
        enable;


-- sqlcl_snapshot {"hash":"3e0d1ebaf85c289b6de4b56c7fa1f5a4a463a81c","type":"REF_CONSTRAINT","name":"FK_HELPER_SQL_HEADERS_HELPER_SQL_EXECUTION_POINTS","schemaName":"EM","sxml":""}