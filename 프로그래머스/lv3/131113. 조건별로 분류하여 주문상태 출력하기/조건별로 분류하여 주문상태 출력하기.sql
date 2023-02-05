-- 코드를 입력하세요
SELECT ORDER_ID,
       PRODUCT_ID,
       DATE_FORMAT(OUT_DATE, '%Y-%m-%d'),
       CASE
       WHEN OUT_DATE IS NULL THEN '출고미정'
       WHEN DATE_FORMAT(OUT_DATE, '%Y-%m-%d') <= DATE_FORMAT('2022-05-01', '%Y-%m-%d') THEN '출고완료'
       ELSE '출고대기'
       END AS 출고날짜
FROM   FOOD_ORDER
ORDER BY ORDER_ID
