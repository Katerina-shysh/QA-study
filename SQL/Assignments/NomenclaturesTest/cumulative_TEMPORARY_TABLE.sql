CREATE TEMPORARY TABLE cumulative 
SELECT EXTRACT(YEAR FROM ord_datetime) as year,
       EXTRACT(MONTH FROM ord_datetime) as month,
       gr_id as group_number,
       COUNT(ord_n_id) as count_n_id
  FROM Orders
  JOIN Nomenclatures
  ON ord_n_id=n_id
  JOIN Groups
  ON n_gr_id=gr_id
  GROUP BY year, month, gr_id;

SELECT group_number, year,month,
       SUM(count_n_id) OVER(PARTITION BY group_number ORDER BY year, month) AS cumulative_total
  FROM cumulative
  ORDER BY group_number, year, month;