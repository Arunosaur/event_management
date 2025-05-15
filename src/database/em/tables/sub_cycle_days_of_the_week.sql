create table em.sub_cycle_days_of_the_week (
    cycle_id         number(5, 0) not null enable,
    day_id           number(1, 0) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_days_of_the_week
    add constraint pk_sub_cycle_days_of_the_week primary key ( cycle_id,
                                                               day_id )
        using index enable;


-- sqlcl_snapshot {"hash":"58380fd60cd374a5f5f5d2f18d3cd9fafb5ce2a6","type":"TABLE","name":"SUB_CYCLE_DAYS_OF_THE_WEEK","schemaName":"EM","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>EM</SCHEMA>\n   <NAME>SUB_CYCLE_DAYS_OF_THE_WEEK</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CYCLE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>5</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>DAY_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>1</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>USER_ID</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>128</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LAST_CHANGE_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>current_date</DEFAULT>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>PK_SUB_CYCLE_DAYS_OF_THE_WEEK</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>CYCLE_ID</NAME>\n               </COL_LIST_ITEM>\n               <COL_LIST_ITEM>\n                  <NAME>DAY_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}