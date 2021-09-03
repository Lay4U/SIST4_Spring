--myroutine 마이루틴 : view

--루틴등록현황 내 루틴만
create or replace view vwtblRoutineState
as
select * from tblroutinestate where kind in '루틴';
select * from vwtblRoutineState;


--루틴목록(전체루틴 + 루틴등록현황 + 일주일회고) : vwmyroutine
create or replace view vwmyroutine
as
select rs.routinestateseq, r.name, r.theme, rs.state, r.content, rs.startdate, rs.rest, rs.time, rs.alarm, rs.repeat, wd.content as weekdiary, rs.memberseq, rs.routineseq 
from tblroutine r
inner join vwtblRoutineState rs
    on r.routineseq = rs.routineseq
inner join tblWeekDiary wd
    on wd.routinestateseq = rs.routineseq;
    
    
select * from vwmyroutine order by routinestateseq desc;
select * from vwmyroutine where routineseq = 132;
select * from vwmyroutine where startdate between '2021-08-29' and '2021-09-05' and memberseq = 1;

select distinct name, theme, state, rest, time, alarm, repeat 
		from vwmyroutine where memberseq = 1 and startdate between '2021-08-31' and '2021-09-05' order by time asc;

select n.*, rownum as rnum from (select distinct name, theme, state, rest, time, alarm, repeat 
		from vwmyroutine where memberseq = 1 and startdate between '2021-08-31' and '2021-09-05' order by time asc) n;      


--루틴추가(전체루틴 테이블 추가 -> 루틴등록 추가)
--전체루틴 TABLE
insert into tblRoutine values (routineSeq.nextVal , '영어 공부하기', '토익 R/C', '공부', sysdate, 1, null);

SELECT * FROM tblRoutine ORDER BY ROUTINESEQ DESC;


--루틴등록 TABLE
SELECT MAX(ROUTINESTATESEQ) FROM TBLROUTINESTATE;
insert into TBLROUTINESTATE (ROUTINESTATESEQ, STARTDATE, KIND, REST, TIME, STATE, ALARM, REPEAT, READCOUNT, MEMBERSEQ, ROUTINESEQ) 
values (routineStateSeq.nextVal, default, '루틴', 'N', '저녁', '저녁먹고나서', 'N', 'N', 1, 1, (SELECT MAX(ROUTINESEQ) FROM TBLROUTINE));

SELECT * FROM TBLROUTINESTATE ORDER BY ROUTINESTATESEQ DESC;


--예약목록확인
select n.*, rownum as rnum from 
(select distinct name, theme, state, rest, time, alarm, repeat 
		from vwmyroutine where memberseq = 1 and startdate between '2021-08-31' and '2021-09-05' order by time asc) n


select * from vwmyroutine where memberseq = 1 and startdate > sysdate order by routinestateseq desc; 

select * from tblroutine where memberseq = 1 order by routineseq asc;
select * from tblroutinestate where memberseq = 1 order by routinestateseq desc;


create or replace view vwfutureroutine
as
select r.routineseq, r.name, r.theme, r.regdate, rs.routinestateseq, rs.startdate, rs.time, rs.memberseq 
from tblroutine r
inner join tblroutinestate rs
    on r.routineseq = rs.routineseq
    order by routineseq desc;

select * from vwfutureroutine where regdate > '2021-09-01';
select name, startdate from vwfutureroutine where memberseq = 1 and regdate > '2021-09-01' order by startdate asc;

--다이어리조회
select * from tbldiary where memberseq = 1 and regdate = '2021-09-02';
