/*
	가격대 별 상품 개수 구하기
	https://school.programmers.co.kr/learn/courses/30/lessons/131530
*/

SELECT TRUNCATE(PRICE, -4) AS PRICE_GROUP, COUNT(*) AS PRODUCTS
FROM PRODUCT
GROUP BY PRODUCT_GROUP
ORDER BY PRODUCT_GROUP ASC;