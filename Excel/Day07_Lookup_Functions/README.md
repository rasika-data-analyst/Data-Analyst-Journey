# Day 7 - Lookup Functions

## Overview

This is Day 7 of my Excel learning journey.

The focus of this day was learning lookup functions used to retrieve information from another table based on a matching value.

## Topics Covered

- VLOOKUP
- XLOOKUP
- INDEX
- MATCH
- INDEX + MATCH
- IFERROR with lookup formulas
- Exact matching
- Lookup from another table

## VLOOKUP

VLOOKUP searches for a value in the first column of a table and returns a value from another column.

Example:

=VLOOKUP(A2,$H$2:$K$11,2,FALSE)

## XLOOKUP

XLOOKUP searches for a value and returns the corresponding value from another range.

Example:

=XLOOKUP(A2,$H$2:$H$11,$I$2:$I$11,"Not Found")

## INDEX + MATCH

INDEX returns a value from a specified position and MATCH finds the position of a lookup value.

Example:

=INDEX($I$2:$I$11,MATCH(A2,$H$2:$H$11,0))

## IFERROR with Lookup

IFERROR can be used to replace lookup errors with a meaningful message.

Example:

=IFERROR(VLOOKUP(A2,$H$2:$K$11,2,FALSE),"Not Found")

## Business Applications

Lookup functions can be used for:

- Employee information retrieval
- Product price lookup
- Customer information lookup
- Department mapping
- Salary lookup
- Sales analysis
- Combining information from different tables

## Skills Learned

- Retrieving information from another table
- Performing exact-match lookups
- Using VLOOKUP
- Using XLOOKUP
- Using INDEX and MATCH
- Handling lookup errors
- Combining data from different sources

## Practice

Created employee and department tables and used lookup functions to retrieve department, salary, manager, and other business information.

## Next

Day 8 - Pivot Tables
