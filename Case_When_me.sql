SELECT ProductID, ProductName, SupplierID, Price,
(CASE 
WHEN Price < 30 THEN "저렴"
WHEN Price > 60 THEN "비쌈"
Else "적당함"
END) AS PL 
FROM Products
WHERE CategoryID IN (3,6)
ORDER BY SupplierID;