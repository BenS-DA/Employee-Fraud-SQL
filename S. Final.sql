-- Employee-Fraud-SQL
-- MySQL Script 19 of 19
-- https://github.com/BenS-DA

-- This query returns transactions that have been previously flagged as suspicious
-- As previously mentioned, stakeholders eventually narrowed their focus to New York-based
-- credit cards, so this query reflects that.

-- Stakeholders (all of whom have non-technical backgrounds) requested that the results from this query be 
-- provided in Microsoft Excel so that the transactions could be reviewed individually. 
-- Some of these transactions were eventually deemed legitimate.

-- Why all of this work on SQL? 
-- The upfront work to develop these scripts was time-consuming but these can be repeated on future data sets
-- to obtain results very quickly as the datasets (credit card bills) don't change. Results can now be obtained and reviewed 
-- in less than one hour - much faster than wrangling 10,000+ rows of data in Excel.

USE fuel;

SELECT 
`Transaction Date`,
`Transaction Time`,
`Card Number`,
`Trans ID`, 
`Units`,
`Unit Cost`,
`Net Cost`,
`Product Description`,
`Merchant City`,
`Merchant State / Province`,
`Outside of Home States`,
`Outside of Service Area`,
`Weekend`,
`Holiday`,
`Irregular Hours`,
`Purchase > $100`,
`Not Unleaded Regular`

FROM charges
    
WHERE
(
(
`Outside of Home States` = TRUE
OR
`Outside of Service Area` = TRUE
OR
`Weekend` = TRUE
OR
`Holiday` = TRUE
OR
`Irregular Hours` = TRUE
OR
`Purchase > $100` = TRUE
OR
`Not Unleaded Regular` = TRUE
)

AND
LEFT(`Card Number`,2) = 'NY'
)

ORDER BY `Card Number`

    