## Добавление связей между таблицами

![Пример](/SQL/screen/Screenshot_2SQL.png "Пример")

## Задание 1

1. Исходные [данные](/SQL/document/%D0%A2%D0%B5%D1%81%D1%82%D0%BE%D0%B2%D0%BE%D0%B5%20%D0%B7%D0%B0%D0%B2%D0%B4%D0%B0%D0%BD%D0%B8%D0%B5_CompX.xlsx)

![Пример](/SQL/screen/0.png "Пример")

2. Данные в таблице "Nomenclatures".

![Пример](/SQL/screen/N.png "Пример")

3. Данные в таблице "Orders".

![Пример](/SQL/screen/O.png "Пример")

4. Данные в таблице "Groups".

![Пример](/SQL/screen/G.png "Пример")

5. Вывести уникальные название и цену для всех товаров, которые продавались 15 июня 2022 и всю следующую неделю.

Запрос в [SQL](/SQL/Assignments/NomenclaturesTest/product.sql)

![Пример](/SQL/screen/product.png "Пример")

## Задание 2

Для данных из задания 1, нарастающим итогом рассчитать, как увеличивалось количество проданной номенклатуры каждый месяц каждого года с разбивкой по группе.

Запрос в SQL с помощью [WITH](/SQL/Assignments/NomenclaturesTest/cumulative_WITH.sql)

![Пример](/SQL/screen/with.png "Пример")

Запрос в SQL с помощью [TEMPORARY](/SQL/Assignments/NomenclaturesTest/cumulative_TEMPORARY_TABLE.sql)

![Пример](/SQL/screen/T.png "Пример")
