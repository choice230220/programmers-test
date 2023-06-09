-- 코드를 입력하세요
# SELECT *
# FROM (SELECT O.ANIMAL_ID
#         , IF(I.NAME IS NULL, O.NAME, NULL) NAME
#     FROM ANIMAL_OUTS O
#         LEFT JOIN ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID) DATA
# WHERE NAME IS NOT NULL
# ORDER BY ANIMAL_ID;

SELECT O.ANIMAL_ID
    , O.NAME
FROM ANIMAL_OUTS O
    LEFT JOIN ANIMAL_INS I ON O.ANIMAL_ID = I.ANIMAL_ID
WHERE I.ANIMAL_ID IS NULL
ORDER BY ANIMAL_ID;