# Pizza Sales Performance Analysis Report (2015)

**Author:** Matthew Odudu-Abasi  
**Tools Used:** SQL · Microsoft Excel · Power BI  

---
![DASHBOARD PAGE 1](https://github.com/user-attachments/assets/82d57eef-f1d9-479e-84c3-7bf104a8bc72)
![DASHBOARD PAGE 2 ](https://github.com/user-attachments/assets/b81b4930-720c-4aec-bb56-f09fe28e9e6e)


## Project Description

This project analyzes pizza sales performance from January 2015 to December 2015 using a combination of SQL, Excel, and Power BI. SQL and Excel were used for basic data cleaning, validation, and aggregation, while Power BI was used to design a two-page interactive dashboard that delivers both operational and strategic business insights.

The analysis focuses on revenue generation, customer ordering behavior, product performance, time-based demand patterns, and sales concentration, helping stakeholders understand what drives sales and where optimization opportunities exist.

---

## Story of the Data

The dataset represents individual customer pizza orders recorded throughout 2015. Each record captures:

- Order date (day, month, year)  
- Pizza name  
- Pizza category (Classic, Supreme, Chicken, Veggie)  
- Pizza size (Regular, Medium, Large, X-Large, XX-Large)  
- Quantity sold  
- Revenue generated  

The data reveals that:

- Demand fluctuates strongly by day of week and month  
- Sales are not evenly distributed across pizza products  
- A small number of pizzas generate a disproportionate share of revenue  
- Customers prefer larger pizza sizes, increasing average order value  
- Some products consistently underperform across all metrics  

---

## Data Preparation & Processing

### SQL (Initial Data Handling)

SQL was used as the first layer of data processing to ensure correctness before visualization. Key steps included:

- Importing the raw pizza sales dataset into SQL tables  
- Checking for missing values and duplicate records  
- Validating numeric columns such as quantity, order count, and revenue  
- Aggregating transactional data into business-ready summaries  

### Excel (Basic Cleaning)

Excel was used for:

- Formatting corrections  
- Standardizing pizza names, sizes, and categories  
- Verifying date consistency  
- Preparing clean tables for Power BI import  

### Power BI

Power BI was used to:

- Create calculated measures (KPIs)  
- Build relationships between tables  
- Design a two-page dashboard  
- Enable filtering by pizza category and date range  

---

## Key KPIs (Executive Summary)

From the dashboard:

- **Total Revenue:** 817.86K  
- **Average Order Value:** 38.31  
- **Total Pizzas Sold:** 49,574  
- **Total Orders:** 21,350  
- **Average Pizzas per Order:** 2.32  

These KPIs establish the scale of operations, customer purchasing intensity, and overall financial performance.

---

## Detailed Chart-by-Chart Analysis & Observations

### Daily Trend for Total Orders

- Sunday: 2.6K  
- Monday: 2.8K  
- Tuesday: 3.0K  
- Wednesday: 3.0K  
- Thursday: 3.2K  
- **Friday: 3.5K (highest)**  
- Saturday: 3.2K  

**Observation:**  
Customer orders increase steadily as the week progresses and peak on Friday, confirming that pizza consumption is highest heading into the weekend. This suggests Fridays are critical for staffing and inventory planning.

---

### Monthly Trend for Total Orders

- **Highest month:** July (1,935 orders)  
- Other strong months: January (1,845), May (1,853), August (1,841)  
- **Lowest months:** October (1,646) and September (1,661)  

**Observation:**  
Sales exhibit clear seasonality, with peaks in summer and early in the year. Lower demand in September and October may be linked to post-holiday slowdowns or changing consumer routines.

---

### Percentage of Sales by Pizza Category

- Classic: 26.91%  
- Supreme: 25.46%  
- Chicken: 23.96%  
- Veggie: 23.68%  

**Observation:**  
Sales are fairly balanced across categories, but Classic pizzas slightly dominate, making them the foundation of overall revenue and order volume.

---

### Percentage of Sales by Pizza Size

- Large: 45.89%  
- Medium: 30.49%  
- Regular: 21.77%  
- X-Large: 1.72%  
- XX-Large: 0.12%  

**Observation:**  
Customers strongly prefer Large pizzas, indicating higher perceived value and an opportunity to drive revenue through size-based upselling.

---

### Total Pizzas Sold by Category

- Classic: 14,888  
- Supreme: 11,987  
- Veggie: 11,649  
- Chicken: 11,050  

**Observation:**  
Classic pizzas lead in both volume and revenue, reinforcing their importance in product strategy.

---

## Best and Worst Sellers Analysis

### Best Sellers

- **Revenue Leader:** Thai Chicken Pizza (~43K)  
- **Quantity & Orders Leader:** Classic Deluxe Pizza (~2.5K quantity, ~2.3K orders)  

**Observation:**  
Some pizzas excel at generating revenue, while others dominate order frequency, highlighting different customer preferences for premium versus popular items.

### Worst Sellers

- **Lowest Revenue, Quantity, and Orders:** Brie Carre Pizza (~12K revenue, ~490 quantity, ~480 orders)  

**Observation:**  
Consistently underperforming products add complexity without meaningful financial contribution.

---

## Key Patterns & Prioritized Insights

- **Revenue Concentration:** A small number of pizzas drive most revenue and orders  
- **Time-Based Demand:** Fridays and summer months are critical sales periods  
- **Size Preference:** Large pizzas dominate sales, driving higher order values  
- **Product Imbalance:** Some pizzas consistently underperform across all metrics  

---

## Detailed Recommendations

### Product Strategy
- Focus promotions on Classic and top-selling pizzas  
- Review underperforming pizzas for reformulation or removal  

### Pricing & Upselling
- Bundle Large pizzas with sides or drinks  
- Introduce premium pricing for high-demand items  

### Operations & Staffing
- Increase staffing on Fridays and weekends  
- Align inventory with seasonal demand peaks  

### Marketing
- Target promotions during low-demand months  
- Highlight best-selling pizzas in campaigns  

### Analytics Growth
- Extend analysis to multiple years  
- Introduce customer segmentation and loyalty tracking  

---

## SQL Query Explanations (Conceptual)

- **Total Revenue Query:** Aggregates total sales revenue to calculate business scale  
- **Total Orders Query:** Counts distinct order IDs to measure order volume  
- **Total Pizzas Sold Query:** Sums quantity sold to understand operational demand  
- **Average Order Value Query:** Divides total revenue by total orders  
- **Daily & Monthly Trend Queries:** Identify peak demand periods  
- **Category & Size Distribution Queries:** Reveal customer preferences  
- **Best/Worst Seller Queries:** Rank pizzas by revenue, quantity, and order count  

---

## Conclusion

This Pizza Sales Performance Analysis demonstrates how SQL, Excel, and Power BI can be combined to transform raw transactional data into clear, actionable business insights. The project highlights demand patterns, product performance gaps, and revenue drivers while showcasing strong foundational skills in data cleaning, analytical thinking, dashboard design, and data storytelling.

The depth of analysis supports both operational improvements and strategic decision-making, making this project a strong addition to a professional data analytics portfolio.
