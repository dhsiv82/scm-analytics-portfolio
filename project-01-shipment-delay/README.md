# Project 01 — Shipment Delay Analyzer

## Overview
Analysis of 180,000+ shipment records from the DataCo Global
Supply Chain dataset to identify late delivery patterns,
root causes, and business impact.

## Tools
- SQL Server (SSMS)
- Power BI (dashboard — coming soon)

## Dataset
DataCo Global Supply Chain Dataset — Kaggle
180,519 rows · Orders, shipments, products, customers

## Key Findings
- 54% of all shipments across the dataset were delivered late
- First Class shipping carried a 95% late delivery rate —
  the highest of all shipping modes
- Root cause: First Class SLA promises 1-day delivery but
  averages 2 days actual transit — an operational
  expectation problem, not a carrier problem
- Late delivery rate was consistent across all product
  categories (54-60%) indicating a systemic issue,
  not category-specific
- Golf Bags & Carts had the highest category-level
  late rate at 68%

## Business Recommendation
Reset First Class shipping SLA windows company-wide.
The promised delivery window is unachievable at current
operational capacity. Alternatively, investigate First Class
carrier contracts for performance penalties.

## Queries
| File | Description |
|------|-------------|
| 1_delivery_status_overview.sql | Overall delivery status breakdown |
| 2_late_rate_by_shipping_mode.sql | Late rate and count by shipping mode |
| 3_avg_delay_days_by_mode.sql | Actual vs scheduled days by mode |
| 4_profitability_by_category.sql | Top 10 categories by total profit |
| 5_late_rate_by_category.sql | Late delivery rate across all product categories |
