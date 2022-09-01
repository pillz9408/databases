
-- CategoryID 별로 각각의 Sum,Count,Avg값을 구하라
SELECT SUM(Price), COUNT(Price), AVG(price) FROM Products
GROUP BY CategoryID;