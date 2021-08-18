select * from TBLMEMBER;
create table TBLMEMBER
(
    memberseq NUMBER               not null
        primary key,
    NAME      VARCHAR2(100)        not null,
    ID        VARCHAR2(100)        not null,
    PW        VARCHAR2(100)        not null,
    BIRTH     DATE                 not null,
    SELFINTRO VARCHAR2(500),
    ACCOUNT   VARCHAR2(500),
    BANK      VARCHAR2(500),
    REGDATE   DATE default SYSDATE not null
)
-- 신보경 조장님
-- 김형래 가나다순
-- 유나혜
-- 전수정
-- 차소현

delete from tblMember;
insert into tblMember values(memberseq.nextval.nextval, '신보경', 'sin', 'qwer1234', '2000/05/20', '안녕하세요 운영자입니다.', '213421-02-012337', '국민은행', sysdate);
insert into tblMember values(memberseq.nextval.nextval, '김형래', 'kim', 'qwer1234', '1993/12/09', '반갑습니다. 김형래입니다..', '186374-16-513274', '하나은행', sysdate);
insert into tblMember values(memberseq.nextval.nextval, '유나혜', 'Yu', 'qwer1234', '2000/03/28', '루틴 만들러 왔습니다.', '137594-48-691475', '한국은행', sysdate);
insert into tblMember values(memberseq.nextval.nextval, '전수정', 'jeon', 'qwer1234', '2000/08/13', '챌린지에 도전하고 싶어요', '247465-41-150748', '기업은행', sysdate);
insert into tblMember values(memberseq.nextval.nextval, '차소현', 'cha', 'qwer1234', '2000/02/05', '안녕하세요 같이 루틴 만들어요', '584213-68-741357', '산업은행', sysdate);

select * from tblComment;

create table TBLCOMMENT
(
    COMMENTSEQ       NUMBER not null
        primary key,
    EMOJI            VARCHAR2(30),
    MESSAGE          VARCHAR2(500),
    memberseq        NUMBER not null
        references TBLMEMBER,
    COMMENTmemberseq NUMBER not null
        references TBLMEMBER
);
-- 😀 😃 😄 😁 😆😀😀😀😀😀
--😀 😃 😄 😁 😆 😅 😂 🤣 🥲 ☺️ 😊 😇 🙂 🙃 😉 😌 😍 🥰 😘 😗 😙 😚 😋 😛 😝 😜 🤪 🤨 🧐 🤓 😎 🥸 🤩 🥳 😏 😒 😞 😔 😟 😕 🙁 ☹️
--😣 😖 😫 😩 🥺 😢 😭 😤 😠 😡 🤬 🤯 😳 🥵 🥶 😱 😨 😰 😥 😓 🤗 🤔 🤭 🤫 🤥 😶 😐 😑 😬 🙄 😯 😦 😧 😮 😲 🥱 😴 🤤 😪 😵 🤐 🥴
-- 🤢 🤮 🤧 😷 🤒 🤕 🤑 🤠 😈 👿 👹 👺 🤡 💩 👻 💀 ☠️ 👽 👾 🤖 🎃 😺 😸 😹 😻 😼 😽 🙀 😿 😾
insert into tblComment values(commentseq.nextval, '😀', '이 루틴을 실행하시는거세요? 정말 대단합니다!', 1, 2);
insert into tblComment values(commentseq.nextval, '😃', '친구 하고 싶습니다! 관심 루티너로 등록하겠습니다!',2, 3);
insert into tblComment values(commentseq.nextval, '😄', '저랑 같이 챌린지 하실래요??',3, 4);
insert into tblComment values(commentseq.nextval, '😊', '재미있는 루틴입니다. 관심있어 이렇게 댓글 남깁니다.',4,5);
insert into tblComment values(commentseq.nextval, '😯', '이렇게 유용한 루틴이 있는지는 몰랐습니다. 좋은 루틴 공유 감사드립니다.',5,6);
insert into tblComment values(commentseq.nextval, '😍', '이 루틴은 정말 좋네요.',2,10);
insert into tblComment values(commentseq.nextval, '😦', '이 루틴은 개인적으로 별로인거 같아요.',3,5);
insert into tblComment values(commentseq.nextval, '😵', '이 루틴 따라하다가 죽겠어요!!.',3,6);
insert into tblComment values(commentseq.nextval, '💩', '이 루틴은 똥같아요!!!!.',6,9);
insert into tblComment values(commentseq.nextval, '💀', '죽기전에 다 지킬 수 있을까요?ㅜㅜ.',5,2);
insert into tblComment values(commentseq.nextval, '😐', '그냥 저냥 무난한거 같아요.',7,4);
insert into tblComment values(commentseq.nextval, '😪', '사람잡겠다... 너무 빡센거 아니에요?.',3,8);
insert into tblComment values(commentseq.nextval, '😺', '우리 고양이를 위한 루틴~.',2,9);
insert into tblComment values(commentseq.nextval, '😇', '식사 루틴까지 공유해주시고 감사합니다~.',4,6);
insert into tblComment values(commentseq.nextval, '😏', '은근히 생활에 도움이 되는 루틴이네요!.',7,9);


insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 1,2);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 1,3);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 1,4);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 2,1);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 2,5);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 3,5);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 4,2);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 4,8);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 5,10);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 5,6);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 6,5);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 7,6);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 8,9);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 9,7);
insert into TBLLIKERUTINER values(LIKERUTINERSEQ.nextval, 10,4);



