use LittleLemonDB;
SELECT C.CustomerID,C.CustomerName as "FullName",O.OrderID,O.TotalCost as "Cost",M.MenuName as "MenuName",MI.Course FROM Customer C
JOIN Orders O
ON O.CustomerID = C.CustomerID
JOIN Menu M
ON O.MenuID = M.MenuID
JOIN MenuItems MI
ON M.MenuItemsID = MI.MenuItemsID
WHERE O.TotalCost > 150.00 order by Cost ASC;