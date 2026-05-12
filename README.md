**Overview:**

- This project answers four real-world business questions using SQLite, demonstrating applied skills in multi-table joins, aggregation, subqueries, and conditional logic. Queries are written for readability and production-quality consistency.
  
- Tool used: VS Code with the SQLTools extension (SQLite driver)

- Database: bais_sqlite_lab.db

- Validation: Results cross-checked by running counts and spot-checks against raw table data 


**Tasks:**

- Task 1: Top 5 Customers by Total Spend
Identifies the five highest-spending customers across all orders. Line totals are computed at the item level (quantity × unit_price) and rolled up to the customer level. No status filter is applied; lifetime spend reflects all order activity regardless of fulfillment status.

- Task 2: Total Revenue by Product Category
Aggregates revenue by product category. Includes a variant filtered to Delivered orders only to compare realized vs. total reported revenue by category.

- Task 3: Employees Earning Above Their Department Average
Uses a subquery to compute each department's average salary, then joins back to the employee table to surface individuals exceeding their department's average. Output includes both the employee salary and department average for direct comparison.

- Task 4: Cities with the Most Loyal Customers
Counts Gold-tier customers by city to rank markets by loyalty concentration. Includes an extension query using conditional aggregation (CASE WHEN) to produce a full Gold/Silver/Bronze distribution per city. 


**Skills Demonstrated:**

- Multi-table JOIN across fact and dimension tables

- Aggregation with GROUP BY, ORDER BY, and HAVING

- Subqueries for row-level comparisons (department salary averages)

- Conditional aggregation with CASE WHEN for pivot-style output

- Filter strategy: WHERE for row-level filters vs. HAVING for post-aggregation filters

- Query formatting for readability: consistent casing, indentation, and column aliasing
