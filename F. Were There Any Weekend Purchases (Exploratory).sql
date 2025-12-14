-- Employee-Fraud-SQL
-- MySQL Script 6 of 19
-- https://github.com/BenS-DA

-- This script identifies any weekend purchases
-- SQL days 1 and 7 are Sunday and Saturday, respectively.

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
`Merchant State / Province`
FROM charges
WHERE
DAYOFWEEK (`Transaction Date`) IN (1,7)
ORDER BY `Card Number`;