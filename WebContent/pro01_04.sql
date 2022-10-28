
create table qnaa( 
    no number primary key, 
	title varchar2(100) not null, 
	content varchar2(600), 
	author varchar2(15), 
	resdate date default sysdate,
    lev number not null,         
    parno number not null,       
    sec char(1)                 
   );
   
   create sequence qesq;
   select * from qnaa;

insert into qnaa values(qesq.nextval,'문의1.','문의합니다','hsy',sysdate,0,qesq.currval,'Y');
insert into qnaa values(qesq.nextval,'문의2.','문의합니다','hsy',sysdate,0,qesq.currval,'Y');
insert into qnaa values(qesq.nextval,'문의3.','문의합니다','hsy',sysdate,0,qesq.currval,'Y');
insert into qnaa values(qesq.nextval,'문의4.','문의합니다','hsy12345',sysdate,0,qesq.currval,'N');
insert into qnaa values(qesq.nextval,'문의5.','문의합니다','hsy',sysdate,0,qesq.currval,'Y');
insert into qnaa values(qesq.nextval,'문의6.','문의합니다','hsy12345',sysdate,0,qesq.currval,'Y');
insert into qnaa values(qesq.nextval,'답변6.','답변합니다','hsy',sysdate,1,qesq.currval,'N');