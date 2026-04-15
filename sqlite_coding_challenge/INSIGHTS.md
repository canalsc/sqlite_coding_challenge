# INSIGHTS.md — SQLite Analytics Challenge

---

## Task 1 — Top 5 Customers by Total Spend

- **Jacob Foster** leads all customers with **$8,722.67** in lifetime spend, followed closely by **Ethan Gomez at $8,206.19** — together they account for a disproportionately large share of total revenue, suggesting these are high-value accounts worth retention investment.
- The gap between rank 2 (Ethan Gomez, $8,206) and rank 3 (Sophia Ahmed, $5,471) is significant (~$2,700), indicating a small top tier of power buyers well above the rest.
- No status filter was applied because the task asks for *lifetime spend*, which reflects the full value a customer has brought in regardless of fulfillment outcome. Filtering to "Delivered" only would undercount customers with pending or processing orders.

---

## Task 2 — Revenue by Product Category

- **Electronics dominates** with **$25,364** in total revenue across all orders — more than double the second-place category (Furniture at $12,712). This single category drives the majority of gross revenue.
- **Grocery ($406) and Stationery ($319)** are significantly smaller contributors, together making up less than 3% of total revenue. These may be ancillary or low-margin categories.
- When filtered to **Delivered orders only**, the category *ranking stays the same* (Electronics → Furniture → Grocery → Stationery), but total revenue drops noticeably: Electronics falls from $25,364 to $13,617 (~46% drop) and Furniture from $12,712 to $8,750 (~31% drop). The larger drop in Electronics suggests a higher proportion of pending/cancelled Electronics orders, which could indicate fulfillment challenges or a higher return/cancellation rate for high-ticket items.

---

## Task 3 — Employees Earning Above Department Average

- **Alice Nguyen (Sales, $72,000)** earns the most above her department average ($61,000), a gap of **$11,000** — the largest individual premium in the dataset. She may be a senior or top-performing rep.
- **Maya Bennett (IT, $112,000)** earns the highest absolute salary of any above-average employee, sitting $6,667 above the IT average. IT has the highest average salary of any department, reflecting market rates for technical roles.
- Every department has exactly **one** above-average earner in this dataset, which is a natural consequence of small team sizes — with 2–3 employees per department, the average is easily skewed by one higher earner.

---

## Task 4 — Cities with the Most Gold Customers

- **Tampa is the only city with Gold-tier customers**, with **4 Gold customers** and zero Silver or Bronze — making it the clear loyalty hub in this dataset.
- All other cities (Brandon, Clearwater, Lakeland, Orlando, Sarasota, St. Petersburg) have either **1 Silver or 1 Bronze** customer and zero Gold members. This suggests Gold loyalty is highly concentrated geographically.
- The dataset appears to be small and locally focused (all Florida cities), so the Tampa dominance may reflect data collection bias rather than a true market insight — a larger dataset would be needed to draw stronger geographic conclusions.
- From a business strategy perspective, Tampa could be the ideal city to pilot loyalty program expansions or in-person customer appreciation events given its outsized Gold concentration.