/*
	과일로 만든 아이스크림 고르기
	https://school.programmers.co.kr/learn/courses/30/lessons/133025
*/

SELECT F.FLAVOR
FROM FIRST_HALF F
RIGHT JOIN (
	SELECT *
	FROM ICECREAM_INFO
	WHERE INGREDIENT_TYPE = "fruit_based"
) I ON F.FLAVOR = I.FLAVOR
WHERE F.TOTAL_ORDER > 3000
ORDER BY F.TOTAL_ORDER DESC