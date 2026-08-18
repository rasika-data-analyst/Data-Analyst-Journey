# Power BI Day 2 – Laptop Data Cleaning & Transformation

## Dataset
Laptop dataset containing information about laptop brands,
specifications, memory, processor, GPU, weight and price.

## Tool
Power BI – Power Query

## Data Cleaning Performed

- Removed completely blank rows
- Checked column quality
- Checked empty values
- Checked errors
- Checked distinct and unique values
- Corrected data types
- Trimmed text values
- Cleaned text values
- Replaced `?` with `Unknown` where appropriate
- Standardized categorical values
- Created an Index column starting from 1

## Conditional Columns Created

- Price_Category
- RAM_Category
- Weight_Category

## Custom Columns Created

- Total_RAM_MB
- Screen_Width
- Screen_Height
- memory_flag

## Data Transformation

- Extracted screen width from screen resolution
- Extracted screen height from screen resolution
- Converted RAM from GB to MB
- Categorized laptop prices
- Categorized RAM capacity
- Categorized laptop weight
- Classified memory configuration

## Data Quality

- Investigated missing values
- Avoided incorrectly replacing missing values with zero
- Validated data types
- Checked for errors and inconsistencies

## Key Learning

Learned how to use Power Query for data cleaning,
text transformation, conditional columns, custom columns,
data validation and preparation for analysis.
