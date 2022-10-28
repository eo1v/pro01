desc membera;
insert into membera values('hsy','1234','한시연','hsy@naver.com','010-1234-1234',sysdate);
insert into membera values('admin','1111','관리자','admin@naver.com','010-1111-1111',sysdate);
select * from membera;

desc boarda;
select * from boarda;
insert into boarda values (bseq.nextval,'테스트 글1', '테스트 글1의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글2', '테스트 글2의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글3', '테스트 글3의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글4', '테스트 글4의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글5', '테스트 글5의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글6', '테스트 글6의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글7', '테스트 글7의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글8', '테스트 글8의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글9', '테스트 글9의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글10', '테스트 글10의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'테스트 글11', '테스트 글11의 내용입니다.','hsy',sysdate);
insert into boarda values (bseq.nextval,'글추가', '테스트', 'admin', sysdate);
