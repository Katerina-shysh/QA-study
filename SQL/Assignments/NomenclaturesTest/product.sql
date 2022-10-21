SELECT DISTINCT n_name, n_price
FROM Nomenclatures
JOIN Orders
ON n_id=ord_n_id
WHERE ord_datetime BETWEEN'2022-06-15' 
AND DATE_ADD('2022-06-15', INTERVAL 1 WEEK)