-- Employee-Fraud-SQL
-- MySQL Script 2 of 19
-- https://github.com/BenS-DA

-- This simple query returns any transaction made outside of 
-- CT and NY. 

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
	WHERE `Merchant State / Province` NOT IN ('CT','NY');
    