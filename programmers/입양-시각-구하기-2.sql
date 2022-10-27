/*
	입양 시각 구하기(2)
	https://school.programmers.co.kr/learn/courses/30/lessons/59413
*/

SET @hour := -1; /* 변수 선언 */
SELECT (@hour := @hour + 1) as HOUR, 
	(SELECT COUNT(*) FROM ANIMAL_OUTS WHERE HOUR(DATETIME) = @hour) as COUNT 
FROM ANIMAL_OUTS 
WHERE @hour < 23;