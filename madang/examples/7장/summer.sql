DROP TABLE Summer; /* 기존 ?��?��블이 ?��?���? ?��?�� ?���? */

CREATE TABLE Summer
( sid   NUMBER,
  class VARCHAR2(20),
  price NUMBER
);

INSERT INTO Summer VALUES (100, 'FORTRAN', 20000);
INSERT INTO Summer VALUES (150, 'PASCAL', 15000);
INSERT INTO Summer VALUES (200, 'C', 10000);
INSERT INTO Summer VALUES (250, 'FORTRAN', 20000);

/* ?��?��?�� Summer ?��?���? ?��?�� */
SELECT *
FROM   Summer;


/* 200�� �л��� ������û ���
DELETE FROM summer
WHERE sid=200;

/* c ���� ������ �ٽ� ��ȸ
SELECT pirce "C ������"
FROM Summer
WHERE class='C';

INSERT INTO Summer VALUES (NULL, 'JAVA', 25000);

SELECT *
FROM Summer;
-- fortran ���� ������ ����--
UPDATE Summer
SET    price=15000
WHERE  class='FORTRAN';

SELECT *
FROM Summer;

SELECT DISTINCT price "FORTRAN ������"
FROM   Summer
WHERE  class='FORTRAN';

SELECT price "FORTRAN ������"
FROM SUMMER
WHERE CLASS = 'FORTRAN';


UPDATE SUMMER
SET PRICE = 20000
WHERE CLASS='FORTRAN';





