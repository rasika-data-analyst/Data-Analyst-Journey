# Day 3 - Logical Functions

## Overview

This is Day 3 of my Excel learning journey.

The focus of this day was using logical functions to make decisions and classify data based on business conditions.

## Topics Covered

* IF function
* Nested IF
* AND function
* OR function
* NOT function
* IFERROR function
* Combining logical functions
* Conditional calculations

## IF Function

Used to return one result when a condition is TRUE and another result when the condition is FALSE.

Example:

```excel
=IF(D2>45000,"High Salary","Normal Salary")
```

## AND Function

Returns TRUE when all specified conditions are TRUE.

Example:

```excel
=AND(D2>45000,E2>80000)
```

## OR Function

Returns TRUE when at least one condition is TRUE.

Example:

```excel
=OR(D2>45000,E2>80000)
```

## NOT Function

Reverses a logical result.

Example:

```excel
=NOT(D2>45000)
```

## Nested IF

Used when multiple conditions need to be evaluated.

Example:

```excel
=IF(D2>=60000,"High",IF(D2>=45000,"Medium","Low"))
```

## IFERROR

Used to display a meaningful result instead of an Excel error.

Example:

```excel
=IFERROR(A2/B2,"Not Available")
```

## Business Applications

Logical functions can be used for:

* Salary classification
* Employee performance classification
* Sales target checking
* Profitability analysis
* Eligibility decisions
* Business rule implementation
* Error handling

## Skills Learned

* Creating conditional logic
* Combining multiple conditions
* Classifying business data
* Handling multiple decision levels
* Replacing formula errors with meaningful messages

## Practice

Created a sample employee/sales dataset and used logical formulas to classify salaries, check sales targets, and create business decisions based on multiple conditions.

## Next

Day 4 - Text Functions
