
-- CategoryID 별로 각각의 Sum,Count,Avg값을 구하라
-- 정렬을 내림차순으로
SELECT CategiryID, SUM(Price), COUNT(Price), AVG(price) FROM Products
GROUP BY CategoryID
ORDER BY CategoryID DESC;;