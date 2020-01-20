DROP TABLE Summer; /* 湲곗〈 ?뀒?씠釉붿씠 ?엳?쑝硫? ?궘?젣 ?븯湲? */

CREATE TABLE Summer
( sid   NUMBER,
  class VARCHAR2(20),
  price NUMBER
);

INSERT INTO Summer VALUES (100, 'FORTRAN', 20000);
INSERT INTO Summer VALUES (150, 'PASCAL', 15000);
INSERT INTO Summer VALUES (200, 'C', 10000);
INSERT INTO Summer VALUES (250, 'FORTRAN', 20000);

/* ?깮?꽦?맂 Summer ?뀒?씠釉? ?솗?씤 */
SELECT *
FROM   Summer;


/* 200번 학생의 수강신청 취소
DELETE FROM summer
WHERE sid=200;

/* c 강좌 수강료 다시 조회
SELECT pirce "C 수강료"
FROM Summer
WHERE class='C';

INSERT INTO Summer VALUES (NULL, 'JAVA', 25000);

SELECT *
FROM Summer;
-- fortran 강좌 수강료 수정--
UPDATE Summer
SET    price=15000
WHERE  class='FORTRAN';

SELECT *
FROM Summer;

SELECT DISTINCT price "FORTRAN 수강료"
FROM   Summer
WHERE  class='FORTRAN';

SELECT price "FORTRAN 수강료"
FROM SUMMER
WHERE CLASS = 'FORTRAN';


UPDATE SUMMER
SET PRICE = 20000
WHERE CLASS='FORTRAN';





