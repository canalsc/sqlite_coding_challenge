-- ============================================================
--TASK 1 — Top 5 Customers by Total Spend
-- Strategy: Join customers → orders → order_items, compute
--           line totals (quantity × unit_price) at the item
--           level, roll up to customer, sort and limit.
--           No status filter applied; all orders are included
--           to reflect lifetime spend (see INSIGHTS.md). 
-- ============================================================

SELECT
    c.first_name || ' ' || c.last_name  AS customer_name,
    SUM(oi.quantity * oi.unit_price)    AS total_spend
FROM customers    c
JOIN orders       o  ON o.customer_id  = c.id
JOIN order_items  oi ON oi.order_id    = o.id
GROUP BY c.id
ORDER BY total_spend DESC
LIMIT 5; 

-- ============================================================
-- TASK 2 — Total Revenue by Product Category (all orders)
-- Strategy: Join order_items → products to get the category
--           for each line, sum quantity × unit_price per
--           category.  All order statuses included.
-- ============================================================
 
SELECT
    p.category,
    SUM(oi.quantity * oi.unit_price)  AS revenue
FROM order_items  oi
JOIN products     p  ON p.id = oi.product_id
GROUP BY p.category
ORDER BY revenue DESC;
 
 
-- ============================================================
-- TASK 2 VARIANT — Revenue by Category (Delivered orders only)
-- Strategy: Same as above but adds a WHERE filter on
--           orders.status = 'Delivered' to reflect only
--           confirmed, realized revenue.
-- ============================================================
 
SELECT
    p.category,
    SUM(oi.quantity * oi.unit_price)  AS revenue
FROM order_items  oi
JOIN products     p  ON p.id  = oi.product_id
JOIN orders       o  ON o.id  = oi.order_id
WHERE o.status = 'Delivered'
GROUP BY p.category
ORDER BY revenue DESC; 

-- ============================================================
-- TASK 3 — Employees Earning Above Their Department Average
-- Strategy: Compute per-department average salary in a
--           subquery, then join back to employees and filter
--           where the employee's salary exceeds that average.
-- ============================================================
 
SELECT
    e.first_name            AS first_name,
    e.last_name             AS last_name,
    d.name                  AS department,
    e.salary                AS employee_salary,
    ROUND(dept_avg.avg_salary, 2) AS dept_avg_salary
FROM employees  e
JOIN departments d       ON d.id              = e.department_id
JOIN (
    SELECT department_id,
           AVG(salary)  AS avg_salary
    FROM   employees
    GROUP  BY department_id
) dept_avg               ON dept_avg.department_id = e.department_id
WHERE e.salary > dept_avg.avg_salary
ORDER BY d.name ASC, e.salary DESC; 

