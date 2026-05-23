# wish_ecommerce_success_factors
End-to-end data analytics capstone project exploring e-commerce success factors through Python, SQL, and Power BI.

# Wish E-commerce Success Factors Analysis

This project was completed as a final capstone project for a data analytics course.

The main objective was to demonstrate end-to-end analytical workflow and practical usage of data analytics tools, including:

- Python for data cleaning and exploration
- SQL for analytical querying and transformation
- Power BI for data modeling, star schema development, and visualization

# Objective
The project focuses on identifying key factors influencing product performance and sales behavior in an e-commerce environment.

## Tools & Technologies

- Python
- SQL
- Power BI
- Star Schema Modeling

## Project Workflow

### 1. Python – Data Cleaning & Exploration
- Data cleaning
- Duplicate value handling
- Missing value handling
- Exploratory analysis
- Data consistency checks

### 2. SQL – Analytical Queries & Transformation
- Revenue analysis
- Product performance analysis
- Pricing segmentation
- Ratings and review analysis
- Merchant reputation analysis

### 3. Power BI – Data Modeling & Visualization
- Additional data transformation
- Star schema creation
- Dashboard development
- KPI visualization
- Interactive reporting

## Key Business Questions

- Which products generate the highest revenue?
- How do ratings influence sales?
- Does shipping price affect product performance?
- How does merchant reputation impact sales?
- Which price ranges perform best?

## Repository Structure

```text
python/     -> Python notebooks
sql/        -> SQL analytical queries
powerbi/    -> Power BI dashboard files
visuals/    -> Dashboard screenshots
```


## Dataset

Publicly available e-commerce dataset used for educational and portfolio purposes.

 
## Business Insights And Reccomendations

### Top 10 Products
* **Insight:** Analysis of the top 10 products by units sold and revenue suggests that women's products are among the strongest drivers of sales performance.
* **Recommendation:** It will be good to concentrate marketing to women's products 

![Top 10 products by Sold Items](visuals/Top10ByItemsSold.png)


![Top 10 products by revenue](visuals/Top10ByRevenue.png) 


###  The Power of Social Proof (Rating Quantity Impact)

* **Insight:** In e-commerce environments, customers rely heavily on reviews from previous buyers due to the inability to physically inspect products before purchase. The analysis clearly validates this behavioral trend, indicating that higher review counts are strongly associated with accelerated sales performance (`units_sold`).
* **Recommendation:** To drive conversion rates for low-performing or new products, Wish should introduce post-purchase automated triggers (such as discount tokens or loyalty points) that incentivize customers to leave detailed reviews and upload photo/video feedback.

![Rating Quantity Impact](visuals/RatingQuantity.png)

*Figure: Scatter plot showcasing the positive correlation between customer review volume and units sold.*


###  Product Rating vs. Sales Performance

* **Insight:** Product ratings serve as a direct indicator of quality for potential buyers. The analysis shows that higher average product ratings have a significant positive impact on sales volume. There is a clear "trust threshold" where products with ratings above 4.0 stars experience a much higher conversion rate and sales velocity compared to those below this benchmark.
* **Recommendation:** Wish should implement a search optimization algorithm that gives higher visibility (organic boost) to products maintaining a score above 4.0, while providing actionable performance dashboards for merchants whose products drop below this threshold to help them improve quality.

![Product Rating Impact](visuals/ProductRating.png)
*Figure: Visual analysis showing the distribution of units sold across different product rating tiers.*


### Merchant Reputation & Platform Trust

* **Insight:** Beyond the individual product, the overall reputation of the merchant plays a critical role in consumer decision-making. High merchant ratings strongly correlate with increased sales, proving that buyers look for established, reliable sellers to minimize purchase risk (e.g., shipping delays or wrong items).
* **Recommendation:** To foster a higher-quality marketplace, Wish should introduce a "Top-Rated Merchant" badge or exclusive perks for sellers who maintain excellent ratings. This will incentivize merchants to optimize their customer service and fulfillment standards.

![Merchant Rating Impact](visuals/merchant_rating_influence.png)
*Figure: Impact of merchant reputation scores on overall store transaction volumes.*

