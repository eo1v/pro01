
-- 글 상세보기
select a.no no a.title tit, a.content con, b.name nm, to_char(a.resdate, 'yyyy-MM-dd' res from boarda a 
inner join memberb b on a.author=b.id where a.no=1

