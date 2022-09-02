-- https://school.programmers.co.kr/learn/courses/30/lessons/59414
-- 각 동물의 아이디와 이름, 들어온 날짜1를 조회하는 SQL문을 작성해주세요. 
-- 이때 결과는 아이디 순으로 조회해야 합니다.
-- 시각(시-분-초)을 제외한 날짜(년-월-일)만 보여주세요
SELECT ANIMAL_ID, NAME, 
(SELECT  DATE_FORMAT(ANIMAL_INS.DATETIME, '%Y-%m-%d')) AS dat
FROM ANIMAL_INS
ORDER BY ANIMAL_ID;