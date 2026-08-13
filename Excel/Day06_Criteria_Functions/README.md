# Day 6 - Criteria Functions

## Overview

This is Day 6 of my Excel learning journey.

The focus of this day was learning criteria-based functions used to filter, count, average, and summarize business data based on one or more conditions.

## Topics Covered

- COUNTIF
- COUNTIFS
- SUMIF
- SUMIFS
- AVERAGEIF
- AVERAGEIFS
- Single-condition analysis
- Multiple-condition analysis

## COUNTIF

Counts cells that meet one condition.

Example:

=COUNTIF(C2:C9,"Sales")

## COUNTIFS

Counts records that meet multiple conditions.

Example:

=COUNTIFS(C2:C9,"Sales",D2:D9,">45000")

## SUMIF

Adds values based on one condition.

Example:

=SUMIF(C2:C9,"Sales",E2:E9)

## SUMIFS

Adds values based on multiple conditions.

Example:

=SUMIFS(E2:E9,C2:C9,"Sales",D2:D9,">45000")

## AVERAGEIF

Calculates the average based on one condition.

Example:

=AVERAGEIF(C2:C9,"Sales",D2:D9)

## AVERAGEIFS

Calculates the average based on multiple conditions.

Example:

=AVERAGEIFS(E2:E9,C2:C9,"Sales",D2:D9,">45000")

## Business Applications

Criteria functions can be used for:

- Department-wise sales analysis
- Employee salary analysis
- Regional sales reporting
- Category-wise performance
- Target analysis
- Conditional averages
- Business KPI calculations

## Skills Learned

- Counting records based on conditions
- Summing values based on conditions
- Calculating conditional averages
- Applying multiple criteria
- Creating business reports using formulas
- Performing targeted data analysis

## Practice

Created an employee sales dataset and used criteria functions to answer real-world business questions.

## Next

Day 7 - Lookup Functions
