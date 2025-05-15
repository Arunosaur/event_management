create unique index em.unq_event_definitions_01 on
    em.event_definitions (
        description,
        procedure_name
    );


-- sqlcl_snapshot {"hash":"76226b749848011329d6191d60f9aad16324293a","type":"INDEX","name":"UNQ_EVENT_DEFINITIONS_01","schemaName":"EM","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>EM</SCHEMA>\n   <NAME>UNQ_EVENT_DEFINITIONS_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>EM</SCHEMA>\n         <NAME>EVENT_DEFINITIONS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>DESCRIPTION</NAME>\n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>PROCEDURE_NAME</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}