# Pandas

This folder contains my Pandas practice file.

# 🐼 Pandas – Data Cleaning & Transformation

This section contains practical Pandas exercises focused on **data cleaning, transformation, missing-value handling, duplicate removal, date-time processing, standardization, and feature creation**.

The notebook demonstrates how Pandas can be used to prepare raw data for further analysis and reporting.

## 📌 Topics Covered

### DataFrame Creation

* Creating a DataFrame using Python dictionaries
* Working with Pandas and NumPy
* Inspecting DataFrame structure
* Viewing and understanding dataset records

### Missing Value Handling

* Identifying missing values using `isnull()`
* Counting missing values using `isnull().sum()`
* Filling missing categorical values using `fillna()`
* Filling numerical missing values using:

  * Mean
  * Median
* Handling missing date values

### Duplicate Data

* Identifying duplicate records using `duplicated()`
* Reviewing duplicate rows
* Removing duplicate records using `drop_duplicates()`
* Validating duplicate removal

### Date & Time Processing

* Converting text columns into DateTime format using `pd.to_datetime()`
* Handling invalid dates using `errors='coerce'`
* Extracting:

  * Joining Year
  * Joining Month
  * Joining Day
* Calculating employee experience from joining year

### Data Validation & Cleaning

* Identifying negative values in the Age column
* Replacing invalid values with appropriate values
* Standardizing department names
* Removing formatting inconsistencies

### Column Transformation

* Renaming columns using `rename()`
* Standardizing column names
* Removing spaces from column names
* Creating new calculated columns

### Feature Engineering

The notebook demonstrates creation of additional analytical columns such as:

* `Salary_Category`
* `Experience`
* `Bonus`
* `Joining_Year`
* `Joining_Month`
* `Joining_Day`
* `Experience_in_Years`

### Conditional Calculations

Custom functions and NumPy are used to perform conditional calculations.

For example, the Bonus calculation applies:

* **10% of salary** for employees with up to 5 years of experience
* **15% of salary** for employees with more than 5 years of experience

## 🧰 Libraries Used

* Python
* Pandas
* NumPy
* Jupyter Notebook

## 🎯 Objective

The objective of this notebook is to develop practical skills in **data preprocessing and transformation using Pandas**, which are essential steps in a Data Analyst workflow.

The techniques demonstrated here can be applied to real-world datasets before performing:

* Exploratory Data Analysis
* Statistical Analysis
* Data Visualization
* Business Analysis
* Reporting
* Dashboard Development

## 📂 Notebook

[View Pandas Data Cleaning & Transformation Notebook](./pandas.ipynb)

## 💡 Key Skills Demonstrated

`Data Cleaning` · `Missing Value Treatment` · `Duplicate Handling` · `DateTime Processing` · `Data Transformation` · `Feature Engineering` · `Conditional Logic` · `Pandas` · `NumPy`

---


**Focus:** Data Analytics | SQL | Python | Pandas | Excel | Power BI
