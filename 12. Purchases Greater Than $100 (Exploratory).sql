-- Employee-Fraud-SQL
-- MySQL Script 12 of 19
-- https://github.com/BenS-DA

-- This script returns transactions greater than $100
-- For the largest fleet vehicles (shuttle buses with 60 gallon tanks) the expected bill is typically $50-$75

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
	WHERE `Net Cost` > 100;