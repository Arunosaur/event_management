create unique index em.unq_groups_01 on
    em.groups (
        description
    );


-- sqlcl_snapshot {"hash":"c8c21fdeea4a2a127687e2e608360d1783199ccd","type":"INDEX","name":"UNQ_GROUPS_01","schemaName":"EM","sxml":"\n  <INDEX xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <UNIQUE></UNIQUE>\n   <SCHEMA>EM</SCHEMA>\n   <NAME>UNQ_GROUPS_01</NAME>\n   <TABLE_INDEX>\n      <ON_TABLE>\n         <SCHEMA>EM</SCHEMA>\n         <NAME>GROUPS</NAME>\n      </ON_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>DESCRIPTION</NAME>\n         </COL_LIST_ITEM>\n      </COL_LIST>\n      \n   </TABLE_INDEX>\n</INDEX>"}