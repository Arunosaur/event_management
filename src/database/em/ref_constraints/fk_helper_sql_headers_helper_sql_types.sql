alter table em.helper_sql_headers
    add constraint fk_helper_sql_headers_helper_sql_types
        foreign key ( type )
            references em.helper_sql_types ( id )
        enable;


-- sqlcl_snapshot {"hash":"b274b37df684f0dfb33791f6834277bda8af39a0","type":"REF_CONSTRAINT","name":"FK_HELPER_SQL_HEADERS_HELPER_SQL_TYPES","schemaName":"EM","sxml":""}