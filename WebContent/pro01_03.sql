 CREATE TABLE faqa 
   (	NO NUMBER primary key, 
	TITLE VARCHAR2(100) not null, 
	CONTENT VARCHAR2(600), 
	AUTHOR VARCHAR2(15), 
	RESDATE DATE DEFAULT sysdate,
    gubun number not null,     
    parno number not null      
   );

create sequence fseq; 
drop table faqa;
drop sequence fseq;
insert into faqa values(fseq.nextval, '질문1', '질문 내용입니다.1', 'admin', sysdate, 0,fseq.currval);
insert into faqa values(fseq.nextval, '질문2', '질문 내용입니다.2', 'admin', sysdate, 0,fseq.currval);
insert into faqa values(fseq.nextval, '질문3', '질문 내용입니다.3', 'admin', sysdate, 0,fseq.currval);
insert into faqa values(fseq.nextval, '질문4', '질문 내용입니다.4', 'admin', sysdate, 0,fseq.currval);
insert into faqa values(fseq.nextval, '질문5', '질문 내용입니다.5', 'admin', sysdate, 0,fseq.currval);

insert into faqa values(fseq.nextval, '답변1', '질문1에 대한 답변입니다.', 'admin', sysdate, 1,1);
insert into faqa values(fseq.nextval, '답변2', '질문2에 대한 답변입니다.', 'admin', sysdate, 1,2);
insert into faqa values(fseq.nextval, '답변3', '질문3에 대한 답변입니다.', 'admin', sysdate, 1,3);
insert into faqa values(fseq.nextval, '답변4', '질문4에 대한 답변입니다.', 'admin', sysdate, 1,4);
insert into faqa values(fseq.nextval, '답변5', '질문5에 대한 답변입니다.', 'admin', sysdate, 1,5);

select * from faqa;

commit;