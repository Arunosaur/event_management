create table em.sub_cycle_time_in_a_day (
    cycle_id         number(5, 0) not null enable,
    database_time    varchar2(5 byte) not null enable,
    user_id          varchar2(128 byte) not null enable,
    last_change_date date default current_date not null enable
);

alter table em.sub_cycle_time_in_a_day
    add constraint ck_sub_cycle_time_in_a_day check ( regexp_like ( database_time,
                                                                    '^(([0-9])|([0-1][0-9])|([2][0-3]))(:(([0-9])|([0-5][0-9])))?$' )
                                                                    ) enable;

alter table em.sub_cycle_time_in_a_day
    add constraint pk_sub_cycle_time_in_a_day primary key ( cycle_id,
                                                            database_time )
        using index enable;


-- sqlcl_snapshot {"hash":"528d0a5cb45c5d8ac36c4c7f32cd87399429e705","type":"TABLE","name":"SUB_CYCLE_TIME_IN_A_DAY","schemaName":"EM","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>EM</SCHEMA>\n   <NAME>SUB_CYCLE_TIME_IN_A_DAY</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>CYCLE_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>5</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>DATABASE_TIME</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>5</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>USER_ID</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>128</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LAST_CHANGE_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>current_date</DEFAULT>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <CHECK_CONSTRAINT_LIST>\n         <CHECK_CONSTRAINT_LIST_ITEM>\n            <NAME>CK_SUB_CYCLE_TIME_IN_A_DAY</NAME>\n            <CONDITION>regexp_like(database_time, '^(([0-9])|([0-1][0-9])|([2][0-3]))(:(([0-9])|([0-5][0-9])))?$')</CONDITION>\n         </CHECK_CONSTRAINT_LIST_ITEM>\n      </CHECK_CONSTRAINT_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>PK_SUB_CYCLE_TIME_IN_A_DAY</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>CYCLE_ID</NAME>\n               </COL_LIST_ITEM>\n               <COL_LIST_ITEM>\n                  <NAME>DATABASE_TIME</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}