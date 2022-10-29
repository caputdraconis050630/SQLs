/*
	이름에 el이 들어가는 동물 찾기
	https://school.programmers.co.kr/learn/courses/30/lessons/59047
*/

SELECT ANIMAL_ID, NAME
FROM ANIMAL_INS
WHERE LOWER(NAME) LIKE "%el%"
AND ANIMAL_TYPE = "Dog"
ORDER BY NAME