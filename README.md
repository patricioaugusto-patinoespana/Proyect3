# Data Visualization and Engineering Project

This project demonstrates the comprehensive handling of data through visualization and engineering techniques. 
It processes over 100 unique records and showcases visual insights using advanced tools in Python, alongside a structured database.

## Project Overview

This project successfully ingests, transforms, and stores data using an ETL workflow. A well-designed SQL database houses the data, 
divided into multiple tables for efficiency. The goal was to present data insights through three distinct visualizations, which allow users 
of all experience levels to extract meaningful information effortlessly.

## Database Design
Type: SQL database (PostgreSQL)
Tables: Two main tables are created—users and transactions. The users table contains demographic data, while transactions focuses on 
financial data. This separation allows for efficient querying and report generation.
ETL Workflow: The data is ingested from CSV files, cleaned, and transformed before being stored in the database. 
All ETL processes have been thoroughly documented and visualized through ER diagrams.
Visualizations

## The project presents three visualizations:

Demographic Distribution: A heatmap visualizing user distribution across various regions. It shows the correlation between demographics 
and transaction behavior.
Transaction Trends: A time-series line graph representing the transaction volume across different months, helping identify seasonal 
trends and peak periods.
Interactive Filters: A dashboard allowing users to filter the dataset by region and transaction type. This dashboard makes the data 
exploration intuitive and user-friendly.
Each visualization is optimized for clarity and was developed using Plotly and Dash to ensure interactivity. Users can filter data and 
manipulate visual outputs in real time.

## Ethical Considerations

Throughout the project, all personally identifiable information (PII) has been anonymized. 
Data usage complied with all relevant privacy policies and guidelines. The visualizations were constructed to avoid misleading 
interpretations, and care was taken to present data in an unbiased manner.
