--T2(쓰는 트랜잭션)
--READ COMMITTED 모드

--step2
SET TRANSACTION ISOLATION LEVEL READ COMMITTED;

UPDATE Users 
SET    age=21
WHERE  id=1;

SELECT * 
FROM   Users
WHERE  id=1;

--step 4
ROLLBACK;

