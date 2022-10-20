## Добавление связей между таблицами

![Пример](/SQL/screen/Screenshot_2SQL.png "Пример")

## Задание 1

Исходные данные.

![Пример1](/SQL/screen/0.png "Пример1")

Вывести уникальные название и цену для всех товаров, которые продавались 15 июня 2022 и всю следующую неделю.

![Пример](/SQL/screen/1.png "Пример")

SELECT DISTINCT n_name, n_cost, n_price
FROM Nomenclatures
JOIN Orders
ON n_id=ord_n_id
WHERE ord_datetime BETWEEN'2022-06-15' 
AND DATE_ADD('2022-06-15', INTERVAL 1 WEEK)

## Задание 2

Для данных из задания 1, нарастающим итогом рассчитать, как увеличивалось количество проданной номенклатуры каждый месяц каждого года с разбивкой по группе.

![Пример](/SQL/screen/2_1.png "Пример")

WITH sales as
(
  SELECT EXTRACT(YEAR FROM ord_datetime) as year,
       EXTRACT(MONTH FROM ord_datetime) as month,
       gr_id as group_number,
       COUNT(ord_n_id) as Nomenc
  FROM Orders
  JOIN Nomenclatures
  ON ord_n_id=n_id
  JOIN Groups
  ON n_gr_id=gr_id
  GROUP BY EXTRACT(YEAR FROM ord_datetime),
           EXTRACT(MONTH FROM ord_datetime),
           gr_id 
)
  SELECT group_number,
         year,
         month,
         SUM(Nomenc) OVER(PARTITION BY group_number
                            ORDER BY year, month) AS cumulative_total
  FROM sales s
  ORDER BY group_number, year, month