/*
	오랜 기간 보호한 동물(2)
	https://school.programmers.co.kr/learn/courses/30/lessons/59411
*/

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_INS AS A
LEFT JOIN ANIMAL_OUTS AS B ON A.ANIMAL_ID = B.ANIMAL_ID
ORDER BY (B.DATETIME - A.DATETIME) DESC
LIMIT 2;