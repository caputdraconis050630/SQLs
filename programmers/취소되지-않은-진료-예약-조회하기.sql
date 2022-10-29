/*
	취소되지 않은 진료 예약 조회하기
	https://school.programmers.co.kr/learn/courses/30/lessons/132204
	진료예약번호, 환자이름, 환자번호, 진료과코드, 의사이름, 진료예약일시 항목이 출력
*/

SELECT A.APNT_NO, P.PT_NAME, A.PT_NO, A.MCDP_CD, D.DR_NAME, A.APNT_YMD
FROM APPOINTMENT AS A
LEFT JOIN PATIENT AS P ON P.PT_NO = A.PT_NO
LEFT JOIN DOCTOR AS D ON A.MDDR_ID = D.DR_ID
WHERE A.APNT_YMD LIKE '2022-04-13%'
AND A.APNT_CNCL_YN = 'N'
AND A.MCDP_CD='CS'
ORDER BY A.APNT_YMD ASC;