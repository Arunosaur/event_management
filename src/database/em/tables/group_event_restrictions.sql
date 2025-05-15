create table em.group_event_restrictions (
    group_id            number(38, 0) not null enable,
    restricted_event_id number(38, 0) not null enable,
    user_id             varchar2(128 byte) not null enable,
    last_change_date    date default current_date not null enable
);

alter table em.group_event_restrictions
    add constraint pk_group_event_restrictions primary key ( group_id,
                                                             restricted_event_id )
        using index enable;


-- sqlcl_snapshot {"hash":"02b39836303f0d0637cd0981aa47e48ef40620f9","type":"TABLE","name":"GROUP_EVENT_RESTRICTIONS","schemaName":"EM","sxml":"\n  <TABLE xmlns=\"http://xmlns.oracle.com/ku\" version=\"1.0\">\n   <SCHEMA>EM</SCHEMA>\n   <NAME>GROUP_EVENT_RESTRICTIONS</NAME>\n   <RELATIONAL_TABLE>\n      <COL_LIST>\n         <COL_LIST_ITEM>\n            <NAME>GROUP_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>38</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>RESTRICTED_EVENT_ID</NAME>\n            <DATATYPE>NUMBER</DATATYPE>\n            <PRECISION>38</PRECISION>\n            <SCALE>0</SCALE>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>USER_ID</NAME>\n            <DATATYPE>VARCHAR2</DATATYPE>\n            <LENGTH>128</LENGTH>\n            <COLLATE_NAME>USING_NLS_COMP</COLLATE_NAME>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n         <COL_LIST_ITEM>\n            <NAME>LAST_CHANGE_DATE</NAME>\n            <DATATYPE>DATE</DATATYPE>\n            <DEFAULT>current_date</DEFAULT>\n            <NOT_NULL></NOT_NULL>\n            \n         </COL_LIST_ITEM>\n      </COL_LIST>\n      <PRIMARY_KEY_CONSTRAINT_LIST>\n         <PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n            <NAME>PK_GROUP_EVENT_RESTRICTIONS</NAME>\n            <COL_LIST>\n               <COL_LIST_ITEM>\n                  <NAME>GROUP_ID</NAME>\n               </COL_LIST_ITEM>\n               <COL_LIST_ITEM>\n                  <NAME>RESTRICTED_EVENT_ID</NAME>\n               </COL_LIST_ITEM>\n            </COL_LIST>\n            <USING_INDEX></USING_INDEX>\n         </PRIMARY_KEY_CONSTRAINT_LIST_ITEM>\n      </PRIMARY_KEY_CONSTRAINT_LIST>\n      <DEFAULT_COLLATION>USING_NLS_COMP</DEFAULT_COLLATION>\n      <PHYSICAL_PROPERTIES>\n         <HEAP_TABLE></HEAP_TABLE>\n      </PHYSICAL_PROPERTIES>\n      \n   </RELATIONAL_TABLE>\n</TABLE>"}