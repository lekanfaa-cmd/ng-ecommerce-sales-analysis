# Nigerian E-Commerce Sales Analysis (2024)

A end-to-end data analysis project examining 200 sales transactions across 10 Nigerian states,
built to simulate real-world analyst work — from raw data to structured insights.

---

## What This Project Is

An exploratory sales analysis of a Nigerian e-commerce business covering the full 2024 calendar year.
The project ingests raw transactional data, runs structured SQL queries to surface business insights,
and presents findings through an Excel dashboard and written narrative.

It covers revenue trends, geographic performance, customer segmentation, and product-category distribution
across states — the kind of analysis a junior-to-mid analyst would be expected to deliver in a business setting.

---

## What Questions It Answers

- **Revenue Trend:** How did monthly revenue perform across 2024? Where are the peaks and drop-offs?
- **Geographic Performance:** Which states drive the most revenue, and what share of total does each hold?
- **Category Dominance:** What is the top-performing product category in each state?
- **Customer Segments:** How do Retail, Wholesale, and Corporate segments compare by order volume, average order value, and total revenue?
- **Concentration Risk:** How dependent is the business on Lagos and Phones & Accessories?

---

## Key Findings

- **Lagos accounts for 29.5% of total revenue (₦29.8M)** — nearly double the next closest state (Abuja at 13%)
- **June was the peak month at ₦14.4M**, but revenue fell sharply to ₦4.1M by November — a 71% drop
- **Phones & Accessories dominates** Lagos, Abuja, and Ogun — indicating high product-geography concentration
- **Corporate segment underperforms** with the lowest avg order value (₦403K) vs Wholesale (₦581K)
- **Retail drives volume** — 123 of 200 orders, making it the backbone of the business

---

## Tools Used

| Tool | Purpose |
|------|---------|
| PostgreSQL | Data storage, querying, aggregations, CTEs |
| Tableau | Dashboard creation, charts, KPI summaries |
| Claude AI | Analyst narrative generation, query debugging |
| GitHub | Version control and portfolio publishing |

---

## Project Structure

```
ng-ecommerce-sales-analysis/
│
├── data/
│   └── ng_sales.csv                  # Raw dataset (200 rows)
│
├── sql/
│   ├── monthly_revenue_trend.sql     # Monthly revenue aggregation
│   ├── states_by_revenue.sql         # Top states + % of total
│   ├── product_category_state.sql    # Best category per state
│   └── customer_segment.sql          # Segment comparison
│
├── output/
│   ├── monthly_revenue_trend.csv
│   ├── states_by_revenue.csv
│   ├── product_category_state.csv
│   ├── customer_segment_comparison.csv
│   └── dashboard_screenshot.png      # Excel dashboard
│
├── narrative/
│   └── analysis_narrative.txt        # Written insights summary
│
└── README.md
```

---

## How to Reproduce

1. Clone this repo
2. Load `data/ng_sales.csv` into PostgreSQL using:
   ```sql
   \copy ng_sales FROM 'data/ng_sales.csv' DELIMITER ',' CSV HEADER;
   ```
3. Run queries in the `/sql` folder in order
4. Export results as CSVs and open the Excel dashboard template

---

## Author

Built as part of an ongoing Data Analysis learning journey.
Focus areas: SQL (PostgreSQL), Excel dashboards, AI-assisted workflows, and real-world project building.

> *"Don't just run queries — answer business questions."*
