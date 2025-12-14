-- Employee-Fraud-SQL
-- MySQL script 4 of 19
-- https://github.com/BenS-DA

-- This script identifies purchases made in NY and CT
-- On Thursday July 4, 2024 (a holiday in the United States)

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
DATE (`Transaction Date`) = '2024-07-04';

