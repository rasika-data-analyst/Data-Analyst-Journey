# Day 4 - Text Functions

## Overview

This is Day 4 of my Excel learning journey.

The focus of this day was learning text functions used to extract, clean, modify, measure, and combine text data.

## Topics Covered

* LEFT
* RIGHT
* MID
* LEN
* TRIM
* SUBSTITUTE
* TEXTJOIN
* Text concatenation
* Extracting portions of text
* Cleaning text data

## LEFT

Extracts characters from the beginning of a text value.

```excel
=LEFT(B2,3)
```

## RIGHT

Extracts characters from the end of a text value.

```excel
=RIGHT(B2,4)
```

## MID

Extracts characters from a specific position.

```excel
=MID(B2,2,5)
```

## LEN

Returns the number of characters in a text value.

```excel
=LEN(B2)
```

## TRIM

Removes unnecessary spaces from text.

```excel
=TRIM(B2)
```

## SUBSTITUTE

Replaces specific text with another value.

```excel
=SUBSTITUTE(B2,"Sales","Marketing")
```

## TEXTJOIN

Combines text from multiple cells using a delimiter.

```excel
=TEXTJOIN(" - ",TRUE,B2,C2,D2)
```

## Business Applications

Text functions can be used for:

* Cleaning customer names
* Extracting product codes
* Extracting employee IDs
* Creating categories from text
* Combining customer information
* Cleaning unwanted spaces
* Standardizing business data

## Skills Learned

* Extracting text from cells
* Cleaning text data
* Measuring text length
* Replacing unwanted text
* Combining multiple text values
* Preparing text data for analysis

## Practice

Created a sample employee/customer dataset and applied text functions to extract, clean, replace, and combine text values.

## Next

Day 5 - Date Functions
