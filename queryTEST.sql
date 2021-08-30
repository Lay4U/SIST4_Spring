select *from tblmember;
select trunc(sysdate)-to_date(regdate) as withdate  from tblmember where memberseq=6;
select distinct to_char(sysdate,'yyyy') as sysyear, to_char(sysdate,'mm')as sysmonth from tblmember;

SELECT * FROM V$VERSION;
 select * from  tblroutine where routineseq=2;
 
  select * from  tblroutinestate
  where memberseq = 2
  and startdate < sysdate;
 
  select * from tblSuccess s
  inner join tblroutinestate rs
  on s.routinestateseq = rs.routinestateseq
  where rs.memberseq = 2;
 
 --지난 루틴
 select 
 rs.startdate as stardate,
 r.name as routineName
 from tblRoutineState rs
    inner join tblRoutine r
        on rs.routineseq = r.routineSeq
    inner join tblSuccess s
        on rs.routinestateseq = s.routinestateseq
 where rs.memberseq=1 
 and to_char(sysdate,'yyyy') = to_char(rs.startdate,'yyyy')
 and to_char(sysdate,'mm') = to_char(rs.startdate,'mm')
and to_char(sysdate,'yyyy-mm-dd')>rs.startdate;
 
		select
         rs.startdate,
        r.routineSeq,
			r.name as nowRoutineName
		from tblRoutineState rs
			inner join tblRoutine r
				on rs.routineseq = r.routineSeq
			inner join tblSuccess s
				on rs.routinestateseq = s.routinestateseq
		where rs.memberseq = 2
			and to_char(sysdate,'yyyy') = to_char(rs.startdate,'yyyy')
			and to_char(sysdate,'mm') = to_char(rs.startdate,'mm')
			and rs.startdate> sysdate;
 
 