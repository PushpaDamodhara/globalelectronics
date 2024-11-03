# globalelectronics

DataSpark: Illuminating Insights for Global Electronics Introduction:

In today’s highly competitive global electronics market, data-driven insights are key to enhancing business performance. The project presented here leverages an extensive dataset stored in an SQL database, combined with a dynamic Power BI dashboard to extract crucial sales patterns. This report outlines key insights derived from SQL queries and Power BI visualizations and offers recommendations based on the findings.

Dataset:

The dataset used for this project includes 5 different datasets. Those are Stores data, Sales data, Customer data, Exchange rates data and product data. various details such as customer demographics (gender, age), store locations, product categories, across different continents. These data are first pre-processed separately for better performance.

Data Pre – Processing:

Data pre-processing involves cleaning, transforming, and organizing raw data to make it usable for analysis. It’s essential because it improves data quality, reduces errors, and ensures consistency, leading to more accurate insights, efficient processing, and better-performing machine learning models or analytical outcomes.

The pre-processing steps differ according to the requirements of the user and the data. The pre-processing steps involved in this project are as follows:

Handling missing data:
• Tools have been used for checking whether any values in the data are missing by obtaining the sum of null values in a column. • If null values are present, the rows with null values are dropped or the null values are filled by obtaining the mean of it. • For the delivery date column in sales data, there were many null values. In order not to lose many data, we replaced the null values by adding 10 days to the order data for each entry.

Correcting data types:
• Correcting data types means converting each column in a dataset to its appropriate format. • The data types for date columns and some columns which must converted from string to integer have been converted.

Handling duplicate values:
• The duplicate values are one of the most concerned things in data which must be rectified. • The datasets have been checked whether it contains any duplicate values. • If the data contains any duplicate values, then the duplicate values have been removed.

Handling Skewness in numerical data:
• Skewness is a measure of the asymmetry in the distribution of data around its mean. It indicates whether data is more concentrated on one side of the mean: o Positive Skew: Data tails off to the right. o Negative Skew: Data tails off to the left. o Zero Skew: Symmetrical distribution.

• Handling skewness is crucial because many analysis depend on the skewness level. Highly skewed data can lead to biased insights which may lead to wrong decisions. • The skewness of the numerical attributes of each data are calculated .

Merging of datasets:

• After preprocessing each datasets, all the five pre-processed data is stored in a csv file separately. Then the data is merged by using merge function and join function. • The merged data is stored in a variable for further process.

Loading data in a SQL database:

• The mysql and python is connected using mysql.connector package. • The mysql server is connected. Then the table is created and the values of the merged pre-processed data is inserted in it.

Connecting your SQL database with power bi:

• The SQL server is connected to power bi for deriving beautiful and meaningful insights for analysis. • The data is uploaded in power bi. • After uploading the data, the insights are drawn.

Summary of analysis in power bi:

Sum of customers by gender:
There is a little gender disparity in the total number of clients, with males and females making up the majority.
Sales by Month:
March had peak sales of approximately 91 million, while sales in January, June, and December are lower.
Sales decline following March, reaching a low point in August and then gradually increasing in December.
Sum of customers by Age: The sales data pertaining to age indicates that sales are concentrated in the younger population, most likely those in the 20–40 age range.

Sales by Store: While many other businesses display considerably lower results, some stores (Store IDs ~20, ~40, ~60) significantly outperform others, producing over 2M in sales.

Sales by Type of Product: The best-selling categories are computers, TV and video, and cameras and camcorders, then home appliances. Comparatively, the categories with the lowest sales include cell phones and audio.

Sales by Continent or Geography: The two continents with the largest concentration of sales, North America and Europe, dominate the sales areas. Australia's sales representation is comparatively lower.

Best Items in Terms of Quantity and Sales: With roughly 49K units sold each, Contoso Water Heaters and Fabrikam Independence top the product sales. Additional goods that make a substantial contribution to overall sales include Adventure Works and NT Washer & Dryer.

Business Questions that are addressed by executing SQL queries:

Here are some questions that are addressed :

Which months have the highest and lowest total sales?
What are the top 5 best-selling products by quantity?
How does sales performance differ between male and female customers?
Which stores generate the most revenue?
What is the sales distribution across different age groups?
What are the total sales by product category?
How do sales differ by continent?
How do daily sales trend over time?
What is the total revenue generated by each customer?
What are the sales figures for top-selling products across different regions?
Conclusion:

This project highlights the power of data analytics in driving business decisions. By leveraging Exploratory data analysis using python, SQL queries and Power BI visualizations, we gain valuable insights into the company’s sales patterns, customer behaviour, and store performance. Implementing the recommendations based on these insights will help the company optimize its operations, improve sales, and maintain a competitive edge in the global electronics market.
