-- Employee-Fraud-SQL
-- MySQL Script 16 of 19
-- https://github.com/BenS-DA

-- Based on exploratory results in scripts 14 and 15, stakeholders deemed the following
-- locations suspicious:
-- New York: New York City, Bronx, Pelham, Yonkers, Scarsdale
-- Connecticut: Greenwich, Darien, Fairfield

-- This script returns transactions made in these locales

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
	WHERE `Merchant City` IN (
    'New York',
    'Bronx',
	'Pelham',
    'Yonkers',
    'Scarsdale',
    'Greenwich',
    'Darien',
    'Fairfield'
    );