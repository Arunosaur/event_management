create unique index em.fbi_event_definitions_01 on
    em.event_definitions ( upper(procedure_name) );


-- sqlcl_snapshot {"hash":"0a3d1b0368e2d22dbd02d168bfb1f81f6d1f58b0","type":"INDEX","name":"FBI_EVENT_DEFINITIONS_01","schemaName":"EM","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>EM</SCHEMA>\n   <NAME>FBI_EVENT_DEFINITIONS_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>EM</SCHEMA>\n         <NAME>EVENT_DEFINITIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <DEFAULT_EXPRESSION>UPPER(\"PROCEDURE_NAME\")</DEFAULT_EXPRESSION>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}