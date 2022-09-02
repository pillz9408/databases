-- https://school.programmers.co.kr/learn/courses/30/lessons/59047
-- 동물 이름 중, 이름에 "EL"이 들어가는 개의 아이디와 이름을 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 이름 순으로 조회해주세요. 
SELECT Dg.ANIMAL_ID,DG.NA FROM
(SELECT ANIMAL_ID, NAME AS Na FROM ANIMAL_INS
WHERE ANIMAL_TYPE IN ("Dog")) Dg
WHERE DG.NA LIKE "%el%"
ORDER BY DG.NA;