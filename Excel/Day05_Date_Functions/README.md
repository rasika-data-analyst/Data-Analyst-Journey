# Day 5 - Date Functions

## Overview

This is Day 5 of my Excel learning journey.

The focus of this day was working with dates and performing date-based calculations used in business and employee analysis.

## Topics Covered

* TODAY
* NOW
* DATE
* YEAR
* MONTH
* DAY
* DATEDIF
* Date subtraction
* Date formatting
* Calculating durations
* Extracting date components

## TODAY

Returns the current date.

```excel
=TODAY()
```

## NOW

Returns the current date and time.

```excel
=NOW()
```

## DATE

Creates a date using year, month, and day values.

```excel
=DATE(2024,5,15)
```

## YEAR

Extracts the year from a date.

```excel
=YEAR(D2)
```

## MONTH

Extracts the month from a date.

```excel
=MONTH(D2)
```

## DAY

Extracts the day from a date.

```excel
=DAY(D2)
```

## DATEDIF

Calculates the difference between two dates.

Example:

```excel
=DATEDIF(D2,E2,"Y")
```

Returns the number of complete years between the two dates.

Other useful units:

```excel
=DATEDIF(D2,E2,"M")
=DATEDIF(D2,E2,"D")
```

## Business Applications

Date functions can be used for:

* Employee tenure analysis
* Customer age analysis
* Order processing time
* Delivery duration
* Monthly sales analysis
* Yearly sales analysis
* Identifying current dates
* Calculating project duration

## Skills Learned

* Working with Excel dates
* Extracting year, month, and day
* Calculating date differences
* Calculating employee tenure
* Performing date-based business analysis
* Creating dates using formulas

## Practice

Created an employee/order dataset and used date functions to calculate joining years, months, employee tenure, and date components.

## Next

Day 6 - Criteria Functions
