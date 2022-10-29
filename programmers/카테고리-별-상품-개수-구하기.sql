/*
	카테고리 별 상품 개수 구하기
	https://school.programmers.co.kr/learn/courses/30/lessons/131529
*/

SELECT SUBSTR(PRODUCT_CODE, 1, 2) AS CATEGORY, COUNT(*)
FROM PRODUCT
GROUP BY CATEGORY
ORDER BY CATEGORY ASC