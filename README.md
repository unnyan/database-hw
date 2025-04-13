1. Медикаменты с ценой выше средней

SELECT name, current_price
FROM medications
WHERE current_price > (
    SELECT AVG(current_price) FROM medications
)
ORDER BY current_price DESC;
Показывает медикаменты, цена которых выше средней.

2. Количество медикаментов в каждой категории

SELECT c.name AS category_name, COUNT(mc.medication_id) AS medication_count
FROM categories c
LEFT JOIN medication_categories mc ON c.category_id = mc.category_id
GROUP BY c.name
ORDER BY medication_count DESC;
Группировка по категориям, с подсчётом медикаментов.

3. Поставщики дорогих медикаментов

SELECT DISTINCT s.organization_name
FROM suppliers s
JOIN supplier_medications sm ON s.supplier_id = sm.supplier_id
JOIN medications m ON sm.medication_id = m.medication_id
WHERE m.current_price > 200;
Ищет поставщиков, у которых есть медикаменты дороже 200.

4. Медикаменты из категорий "Антибиотики" или "Противовирусные"

SELECT m.name
FROM medications m
JOIN medication_categories mc ON m.medication_id = mc.medication_id
JOIN categories c ON mc.category_id = c.category_id
WHERE c.name IN ('Antibiotiki', 'Protivovirusnye');
Фильтрация по категориям.

5. Рейтинг медикаментов по цене

SELECT name, current_price,
       RANK() OVER (ORDER BY current_price DESC) AS price_rank
FROM medications;
Оконная функция RANK() — ранжирование по цене.

6. Медикаменты дороже всех, поставляемых из России

SELECT name, current_price
FROM medications
WHERE current_price > ALL (
    SELECT m.current_price
    FROM medications m
    JOIN supplier_medications sm ON m.medication_id = sm.medication_id
    JOIN suppliers s ON s.supplier_id = sm.supplier_id
    WHERE s.country = 'Russia'
);
Использует подзапрос с ALL.

7. Текущая и предыдущая цена медикаментов

SELECT name, current_price,
       LAG(current_price) OVER (ORDER BY current_price) AS previous_price
FROM medications;
Оконная функция LAG() показывает предыдущую цену.

8. Средняя цена в категории (если > 2 медикаментов)

SELECT c.name AS category_name, AVG(m.current_price) AS avg_price
FROM categories c
JOIN medication_categories mc ON c.category_id = mc.category_id
JOIN medications m ON mc.medication_id = m.medication_id
GROUP BY c.name
HAVING COUNT(m.medication_id) > 2
ORDER BY avg_price DESC;
Фильтрация с HAVING по количеству медикаментов.

9. ♻Пары медикаментов с одинаковой дозировкой

SELECT m1.name AS medication1, m2.name AS medication2, m1.dosage
FROM medications m1
JOIN medications m2 ON m1.dosage = m2.dosage AND m1.medication_id < m2.medication_id;
Самосоединение: находит пары с одинаковой дозой.

10. Постраничный вывод медикаментов (2-я страница, по 5 записей)

SELECT *
FROM medications
ORDER BY name
LIMIT 5 OFFSET 5;
Пагинация: 2-я страница по 5 записей.
