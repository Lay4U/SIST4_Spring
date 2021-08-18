CREATE TABLE tblMember
(
    memberSeq number PRIMARY KEY,
    name      varchar2(100)        NOT NULL,
    id        varchar2(100)        NOT NULL,
    pw        varchar2(100)        NOT NULL,
    birth     date                 NOT NULL,
    selfIntro varchar2(500)        NULL,
    account   varchar2(500)        NULL,
    bank      varchar2(500)        NULL,
    regdate   date DEFAULT SYSDATE NOT NULL
);
CREATE SEQUENCE memberseq;
--------------------------------------------------------------------
--memberseq FK
CREATE TABLE tblDiary
(
    diarySeq   number primary key,
    diaryTitle varchar2(1000) NOT NULL,
    memberSeq  number references tblMember (memberSeq)
);
CREATE SEQUENCE diaryseq;

CREATE TABLE tblPointHistory
(
    pointhistorySeq Number PRIMARY KEY,
    usedate         Date           NOT NULL,
    record          varchar2(1000) NOT NULL,
    amount          Number         NOT NULL,
    memberSeq       number         NOT NULL REFERENCES tblMember (memberSeq)
);
CREATE SEQUENCE pointhistoryseq;

CREATE TABLE tblComment
(
    commentSeq       number PRIMARY KEY,
    emoji            varchar2(30)  NULL,
    message          varchar2(500) NULL,
    memberSeq        number        NOT NULL REFERENCES tblMember (memberSeq),
    commentMemberSeq number        NOT NULL REFERENCES tblMember (memberSeq)
);
CREATE SEQUENCE commentseq;

CREATE TABLE tblAlarm
(
    alarmSeq Number PRIMARY KEY,
    alarmtime           varchar2(500) ,
    routineStateSeq      number        NOT NULL REFERENCES tblRoutineState(routineStateSeq)
);
create sequence alarmseq;
select * from tblAlarm;

select * from tblAlarm;

CREATE TABLE tblAlarmBasic
(
    alarambasicSeq Number PRIMARY KEY,
    kind           varchar2(500) NULL check (kind in ('주간', '아침', '저녁')),
    memberSeq      number        NOT NULL REFERENCES tblMember (memberSeq)
);
CREATE SEQUENCE alarmBasicseq;

CREATE TABLE tblLikeRutiner
(
    likerutinerSeq number PRIMARY KEY,
    memberSeq      number NOT NULL REFERENCES tblMember (memberSeq),
    likedmemberSeq number NOT NULL REFERENCES tblMember (memberSeq)
);
CREATE SEQUENCE likerutinerseq;

CREATE TABLE tblRoutine
(
    routineSeq number PRIMARY KEY,
    name       varchar2(100)        NOT NULL,
    content    varchar2(1000)       NOT NULL,
    theme      varchar2(100)        not null check (theme in
                                                    ('모닝루틴', '저녁루틴', '건강', '생산성', '셀프케어', '생활', '여유', '관계', '성장', '공부',
                                                     '경제')),
    regdate    date default sysdate NOT NULL,
    memberSeq  number references tblMember (memberSeq)
);
CREATE SEQUENCE routineseq;

CREATE TABLE tblRoutineSupport
(
    tblRoutineSupportSeq number primary key,
    routineSeq           number references tblRoutine (routineSeq),
    memberSeq            number references tblMember (memberSeq)
);
CREATE SEQUENCE routinesupportseq;


-----------------------------------------------------------------------
--TBLMEMBER, TBLROUTINE, tblDiary
CREATE TABLE tblRoutineState
(
    routineStateSeq number PRIMARY KEY,
    startDate       Date default sysdate NULL,
    kind            varchar2(200)        NULL check (kind in ('루틴', '챌린지')),     --루틴or챌린지
    rest            varchar2(200)        NULL check (rest in ('Y', 'N')),
    time            varchar2(100)        NULL check (time in ('아침', '오후', '저녁')),--아침, 오후, 저녁
    state           varchar2(2000)       NULL,
    alarm           varchar2(500)        NULL check (alarm in ('Y', 'N')),
    repeat          varchar2(500)        NULL check (repeat in ('Y', 'N')),
    readCount       Number               NULL,
    memberSeq       number references tblMember (memberSeq),
    routineSeq      number references tblRoutine (routineSeq)
);
CREATE SEQUENCE routinestateseq;


CREATE TABLE tblChallenge
(
    challengeSeq       number PRIMARY KEY,
    challengeName      varchar2(500)  NOT NULL,
    challengeContent   varchar2(2000) NOT NULL,
    challengeStartDate date           NOT NULL,
    challengeEndDate   date           NOT NULL,
    challengeBaseMoney number         NOT NULL,
    challengeRegdate   date		DEFAULT SYSDATE NOT NULL,
    routineSeq         number         NOT NULL REFERENCES tblRoutine (routineSeq)
);
CREATE SEQUENCE challengeseq;

CREATE TABLE tblRoutineSetState
(
    routineSetStateSeq number primary key,
    routineSeq         number references tblRoutine (routineSeq)
);

CREATE SEQUENCE routinesetstateseq;

CREATE TABLE tblDiarySub
(
    diarySubSeq  number primary key,
    diaryDate    date default sysdate NULL,
    diaryContent varchar2(4000)       NULL,
    diarySeq     number references tblDiary (diarySeq),
    wishalarm    varchar2(1)          null check (wishalarm in ('y', 'n')) -- TODO 알람설정 여부에 따라 나중에 쓸지 말지 결정
);

CREATE SEQUENCE diarysubseq;

-----------------------------------------------------------------------
--TBLMEMBER, TBLROUTINE, TBLROUTINESTATE, tblChallenge


-- [2021-08-16 18:38:04] [42000][2270] ORA-02270: no matching unique or primary key for this column-list
-- [2021-08-16 18:38:04] Position: 333
CREATE TABLE tblRoutineSet
(
    routinesetSeq      number primary key,
    theme              varchar2(200) not null check (theme in ('모닝루틴', '저녁루틴', '건강', '생산성', '셀프케어', '생활', '여유', '관계', '성장', '공부', '경제')),
    routineSetStateSeq Number references tblRoutineSetState (routineSetStateSeq)
);

drop table tblRoutineSet;
CREATE SEQUENCE routinesetseq;


CREATE TABLE tblRoutineState
(
    routineStateSeq number PRIMARY KEY,
    startDate       Date default sysdate NULL,
    kind            varchar2(200)        NULL check (kind in ('루틴', '챌린지')),     --루틴or챌린지
    rest            varchar2(200)        NULL check (rest in ('Y', 'N')),
    time            varchar2(100)        NULL check (time in ('아침', '오후', '저녁')),--아침, 오후, 저녁
    state           varchar2(2000)       NULL,
    alarm           varchar2(500)        NULL check (alarm in ('Y', 'N')),
    repeat          varchar2(500)        NULL check (repeat in ('Y', 'N')),
    readCount       Number               NULL,
    memberSeq       number references tblMember (memberSeq),
    routineSeq      number references tblRoutine (routineSeq)
);
CREATE SEQUENCE routinestateseq;

CREATE TABLE tblSuccess
(
    tblSuccessSeq   number PRIMARY KEY,
    successState    char(1)              NOT NULL,
    shortMemo       varchar2(2000)       NULL,
    longMemo        varchar2(4000)       NULL,
    successDate     date default sysdate NOT NULL,
    routineStateSeq number               NOT NULL REFERENCES tblroutineState (routineStateSeq),
    CONSTRAINT CK_SuccessState CHECK (successState IN ('Y', 'N'))
);
CREATE SEQUENCE successseq;

create table tblRoutineRepeat
(
    routinerepeatSeq number primary key,
    repeateDate      varchar2(200) check (repeateDate in ('월', '화', '수', '목', '금', '토', '일')),
    routineStateSeq  number references tblRoutineState (routineStateseq)
);
create sequence routinerepeatseq;

CREATE TABLE tblWeekDiary
(
    wdiarySeq       number PRIMARY KEY,
    regdate         date default sysdate NULL,
    content         varchar2(4000)       NULL,
    routineStateSeq number references tblRoutineState (routineStateSeq)
);
CREATE SEQUENCE weekdiaryseq;

CREATE TABLE tblChallengeSupport
(
    challengeSupportSeq Number primary key,
    memberSeq           number NOT NULL references tblMember (memberSeq),
    challengeSeq        number NOT NULL references tblChallenge (challengeSeq)
);
CREATE SEQUENCE challengesupportseq;

CREATE TABLE tblChallengeState
(
    challengeStateSeq Number primary key,
    challengeSeq      number NOT NULL references tblChallenge (challengeSeq),
    memberSeq         number NOT NULL references tblMember (memberSeq)
);
CREATE SEQUENCE challengestateseq;


----------------------------------------------------------------
----TBLMEMBER, TBLROUTINE, TBLROUTINESTATE, tblChallenge, tblChallengeState

CREATE TABLE tblChallengeReview
(
    challengeReviewSeq number PRIMARY KEY,
    title              varchar2(500)        NOT NULL,
    content            varchar2(4000)       NOT NULL,
    regdate            Date DEFAULT SYSDATE NOT NULL,
    challengeStateSeq  number references tblChallengeState (challengeStateSeq)
);
CREATE SEQUENCE challengereviewseq;


-- 더미나누기, drop문 , ui








