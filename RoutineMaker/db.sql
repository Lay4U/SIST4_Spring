--myroutine 마이루틴 : view

--루틴등록현황 내 루틴만
create or replace view vwtblRoutineState
as
select * from tblroutinestate where kind in '루틴';
--select * from vwtblRoutineState;


--루틴목록(전체루틴 + 루틴등록현황 + 일주일회고)
create or replace view vwmyroutine
as
select rs.routinestateseq, r.name, r.theme, rs.state, r.content, rs.startdate, rs.rest, rs.time, rs.alarm, rs.repeat, wd.content as weekdiary, rs.memberseq from tblroutine r
inner join vwtblRoutineState rs
    on r.routineseq = rs.routineseq
inner join tblWeekDiary wd
    on wd.routinestateseq = rs.routineseq;
    
    
select * from vwmyroutine;
select * from vwmyroutine where memberseq = 1;

select * from vwmyroutine where startdate between '2021-08-29' and '2021-09-05' and memberseq = 1;
select distinct name, theme, state, rest, time, alarm, repeat 
		from vwmyroutine where memberseq = 1 and startdate between '2021-08-31' and '2021-09-05' order by time asc;


select n.*, rownum as rnum from (select distinct name, theme, state, rest, time, alarm, repeat 
		from vwmyroutine where memberseq = 1 and startdate between '2021-08-31' and '2021-09-05' order by time asc) n;      


    
    
