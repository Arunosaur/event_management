create table em.event_logs (
    queue_id  number(38, 0) not null enable,
    lap_id    number(4, 0) default 1 not null enable,
    message   varchar2(512 byte) not null enable,
    create_ts timestamp(6) not null enable,
    begin_ts  timestamp(6),
    end_ts    timestamp(6),
    finish_cd number(1, 0) not null enable
);

alter table em.event_logs
    add constraint pk_event_logs primary key ( queue_id,
                                               lap_id )
        using index enable;


-- sqlcl_snapshot {"hash":"0e55f1b847b12b21c03637c9ba6149e728142810","type":"TABLE","name":"EVENT_LOGS","schemaName":"EM","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>EM</SCHEMA>\n   <NAME>EVENT_LOGS</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>QUEUE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>38</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LAP_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>4</PRECISION>\n            <SCALE>0</SCALE>\n            <DEFAULT>1</DEFAULT>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>MESSAGE</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>512</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>CREATE_TS</NAME>\n            <DATATYPE>TIMESTAMP</DATATYPE>\n            <SCALE>6</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>BEGIN_TS</NAME>\n            <DATATYPE>TIMESTAMP</DATATYPE>\n            <SCALE>6</SCALE>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>END_TS</NAME>\n            <DATATYPE>TIMESTAMP</DATATYPE>\n            <SCALE>6</SCALE>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>FINISH_CD</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>1</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>PK_EVENT_LOGS</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>QUEUE_ID</NAME>\n               </COL_LIST_ITEM>\n               <COL_LIST_ITEM>\n                  <NAME>LAP_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}