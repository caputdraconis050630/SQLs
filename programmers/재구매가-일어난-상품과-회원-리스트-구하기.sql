/*
	https://school.programmers.co.kr/learn/courses/30/lessons/131536
	재구매가 일어난 상품과 회원 리스트 구하기

	
	참고
	https://kimsyoung.tistory.com/entry/SQL%EC%97%90%EC%84%9C-%EC%A4%91%EB%B3%B5%EA%B0%92-%EC%B0%BE%EB%8A%94-%EB%B0%A9%EB%B2%95
*/



SELECT USER_ID, PRODUCT_ID
FROM ONLINE_SALE
GROUP BY USER_ID, PRODUCT_ID
HAVING COUNT(*) > 1
ORDER BY USER_ID ASC, PRODUCT_ID DESC;