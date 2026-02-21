🛒 Zepto Product Data Analysis using PostgreSQL

📌 Project Overview

This project analyzes Zepto product data using PostgreSQL to extract business insights related to pricing strategy, discount patterns, inventory distribution, and revenue estimation.

The objective was to simulate real-world retail analytics and derive actionable insights using structured SQL queries.



🛠 Tools & Technologies Used

* PostgreSQL
* SQL
* pgAdmin
* GitHub


🗄 Database Structure

A structured table was created with the following fields:

* `sku_id` (Primary Key)
* `category`
* `name`
* `mrp`
* `discountPercent`
* `availableQuantity`
* `discountedSellingPrice`
* `weightInGms`
* `outOfStock`
* `quantity`

---

🧹 Data Cleaning & Preparation

Before analysis, the following cleaning steps were performed:

* Removed products where `mrp = 0`
* Converted `discountedSellingPrice` from paise to rupees
* Checked for zero or inconsistent pricing values

This ensured accurate and reliable analysis results.

---

📊 Business Questions Solved

1️⃣ Top 10 Best-Value Products

Identified products offering the highest discount percentages.

2️⃣ High MRP Products That Are Out of Stock

Analyzed premium products unavailable in stock to detect potential demand concentration.

3️⃣ Estimated Revenue Per Category

Calculated estimated revenue using:
Revenue = Discounted Selling Price × Available Quantity

4️⃣ High MRP (>₹500) with Low Discount (<10%)

Identified premium products with minimal discount strategies.

5️⃣ Top 5 Categories by Average Discount

Determined which categories offer the highest average discounts.

6️⃣ Price Per Gram Analysis

Calculated price efficiency for products above 100g to determine best value offerings.

7️⃣ Weight-Based Segmentation

Classified products into:

* Low (<1000g)
* Medium (<2000g)
* Bulk (>2000g)

8️⃣ Total Inventory Weight Per Category

Measured total stock weight to assess inventory distribution impact.

---

📈 Key Insights

* Certain categories offer significantly higher average discounts.
* Premium products (₹300+) show noticeable out-of-stock trends.
* Revenue contribution varies across product categories.
* Bulk-weight products contribute heavily to total inventory weight.
* Some high-MRP items provide minimal discounts, indicating pricing confidence.


🚀 Skills Demonstrated

* Data Cleaning using SQL
* Aggregations (SUM, AVG, COUNT)
* GROUP BY & ORDER BY
* Conditional Logic (CASE Statements)
* Revenue Modeling
* Inventory Analysis
* Pricing & Discount Analysis
* PostgreSQL Database Design


🎯 Conclusion
This project demonstrates how SQL can be used to transform raw retail product data into structured business insights. It highlights pricing strategies, inventory management patterns, and revenue estimation techniques using PostgreSQL.



