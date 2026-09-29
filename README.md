# E-Commerce Sales & Customer Insights Dashboard

## Project Overview
An end-to-end data analytics project evaluating e-commerce performance across sales revenue, product categories, customer distribution, and delivery logistics. Built using **SQL Server (T-SQL)** for data extraction and cleaning, and **Microsoft Excel** for statistical analysis and executive dashboarding.

---

## Data Architecture & Tech Stack
- **Database Environment:** SQL Server (`SalesDB`)
- **Key Tables:** `Sales.Customers`, `Sales.Products`, `Sales.Orders` (2025), and `Sales.OrdersArchive` (2024)
- **Spreadsheet Analytics:** Microsoft Excel (PivotTables, PivotCharts, Subtotals, Descriptive Statistics)

---

## Data Cleaning & Engineering Steps
1. **Schema Auditing:** Identified distinct non-overlapping historical date ranges (2024 archive vs. 2025 current) sharing order sequence IDs[cite: 5].
2. **Data Integrity Filter:** Uncovered order records with $0 Quantity ($Quantity = 0$). Applied an integrity constraint ($Quantity > 0$) to enforce the pricing rule ($Revenue = Price \times Quantity$).
3. **Data Unification:** Wrote a modular query uniting multi-year datasets using `UNION ALL` and relational `INNER JOIN`s across customer and product tables.
4. **Production View:** Encapsulated cleaning logic inside `Sales.v_CleanedEcommerceOrders` for automated downstream reporting.

---

## Key Business Findings
- **Total Revenue:** ₹660 across 30 total units sold.
- **Category Leader:** **Clothing** generated highest revenue (₹380 across 14 units) vs. **Accessories** (₹280 across 16 units).
- **Top Customers:** **Jossef Goldberg** (Germany) led individual spending at ₹250, closely followed by **Mary** (USA) at ₹230.
- **Logistics Performance:** Average delivery turnaround across fulfilled orders stood at **6.5 days**.
