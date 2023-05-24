-- 코드를 입력하세요
SELECT FH.FLAVOR FLAVOR
FROM FIRST_HALF FH
    INNER JOIN JULY J ON FH.FLAVOR = J.FLAVOR
GROUP BY FLAVOR
ORDER BY SUM(FH.TOTAL_ORDER) + SUM(J.TOTAL_ORDER) DESC
LIMIT 3;