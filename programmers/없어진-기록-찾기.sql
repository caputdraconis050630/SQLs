/*
	없어진 기록 찾기
	https://school.programmers.co.kr/learn/courses/30/lessons/59042
*/

SELECT A.ANIMAL_ID, A.NAME
FROM ANIMAL_OUTS AS A 
LEFT JOIN ANIMAL_INS AS B 
ON A.ANIMAL_ID = B.ANIMAL_ID
WHERE  B.DATETIME IS NULL AND A.DATETIME IS NOT NULL
ORDER BY A.ANIMAL_ID