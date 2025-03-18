
# Online retail analysis
*Technical:*  **DBT, Snowflake, RestAPI, PowerBI.**

*Abilities:* Data engineering, Data analysis, Machine learning.

# Executive Summary

This project aims to leverage **analytics engineering techniques to optimize sales, improve customer targeting, and enhance operational decision-making** by developing an interactive dashboard and implementing predictive models. 

The **Sales Data** will be used to analyze customer behavior, sales trends, and regional performance, delivering actionable insights for business stakeholders. Predictive analytics will be applied to forecast future sales, identify potential customer churn, and recommend targeted product strategies.
# Business problem

Key challenges include:

- **Lack of Data-Driven Decision-Making**
- **Limited Data Intelligence**
- **Poor Data Accessibility**

By addressing these challenges, this project aims to empower stakeholders with **data-driven insights** that enhance sales performance, improve customer targeting, and drive smarter business decisions.
# Scope of work
![ECOMA](https://github.com/user-attachments/assets/ee6e63e7-ce6e-4827-bc06-669909c0e5bf)

## Data extraction
The data ingestion process is designed for flexibility, supporting integration from multiple sources, including:

- **E-commerce platforms** such as Shopify and Magento
- **Custom web applications** using API keys for secure data access

The platform must support a **RESTful API** to facilitate seamless data retrieval. The ingestion pipeline ensures that raw data is securely and efficiently pulled into a centralized data warehouse.
## Data Warehousing
The project leverages **Snowflake** as the primary data warehousing solution. The structure of the warehouse includes:

- A **dedicated warehouse** for optimized performance and scalability.
    
-  **Databases** designed for different stages of data processing and storage.
    
- Structured **tables** to organize ingested data, ensuring efficient querying and transformation.
## Data transformation
Data transformation is managed using **dbt (Data Build Tool)**. The transformation layer is responsible for:

- Cleaning and structuring raw data into meaningful formats.
    
- Applying business logic and calculations to derive insights.
    
- Creating curated datasets optimized for reporting and analysis.
## Predicative Modeling 
Using **Snowpark**, which enables running Jupyter notebooks or Python scripts directly on Snowflake datasets, the project will develop machine learning models to:

1. **Predict future sales trends** based on historical data
2. **Identify purchasing patterns** across different customer segments
## Data Visualization

The final step is **dashboard development** to present KPIs and insights discussed with stakeholders. Key dashboard elements include.
- Sales Analysis
- Salesperson performance 
- KPI Developement

# Results

## ERD Diagram - Snowflake
<img width="1142" alt="Screen Shot 2025-03-14 at 7 36 58 PM" src="https://github.com/user-attachments/assets/b5a14250-3a94-41e9-a1ca-ebe49cf2112e" />

## DBT data transformation diagram 
![Screen Shot 2025-03-16 at 9 36 29 AM](https://github.com/user-attachments/assets/3fcb52ea-bccb-4136-a9a2-b6c7f8f21bcf)

## Dashboard
The dashboard is created with three independent different pages:


### 1. KPI's Tracking Report
![image](https://github.com/user-attachments/assets/0f7ff04b-6804-425e-b2a7-bb731ffa3996)
### 2. Sales Analysis Report
![image](https://github.com/user-attachments/assets/f4e2f70a-49b9-42a4-adcb-485d0d46ffb1)
### 3. Sales Person Performance Report
![image](https://github.com/user-attachments/assets/a948e578-07a2-43e0-9a29-c6c92610d275)

## Conclusion

By implementing this **end-to-end data solution**, the company will overcome its **data-related challenges** and establish a **data-driven culture**. The integration of **DBT, Snowflake, REST API, and Power BI** will enhance decision-making capabilities, ultimately leading to increased sales, improved customer targeting, and streamlined business operations. 

Additionally, **DBT will maintain the data up to date** by creating jobs that update queries regularly. The **KPI page will directly address the issue of limited data intelligence** by offering clear, structured insights. Furthermore, the **dashboard itself will facilitate more data-driven decision-making** across all levels of the business.
