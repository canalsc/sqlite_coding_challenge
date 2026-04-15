TASK 1 — Top 5 Customers by Total Spend
-- Strategy: Join customers → orders → order_items, compute
--           line totals (quantity × unit_price) at the item
--           level, roll up to customer, sort and limit.
--           No status filter applied; all orders are included
--           to reflect lifetime spend (see INSIGHTS.md).