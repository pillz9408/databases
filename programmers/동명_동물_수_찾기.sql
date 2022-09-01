-- https://school.programmers.co.kr/learn/courses/30/lessons/59041
-- 동물 이름 중 두 번 이상 쓰인 이름과 해당 이름이 쓰인 횟수를 조회하는 SQL문을 작성해주세요.
-- 결과는 이름이 없는 동물은 집계에서 제외하며, 결과는 이름 순으로 조회해주세요.
SELECT Dob.NAME, DOb.Cnt FROM
(
    SELECT NAME, COUNT(NAME) Cnt FROM ANIMAL_INS
    WHERE NAME IS NOT NULL
    GROUP BY NAME
) Dob
WHERE Dob.Cnt >= 2
ORDER BY NAME;