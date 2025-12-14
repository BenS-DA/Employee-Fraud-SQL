-- Employee-Fraud-SQL
-- MySQL Script 10 of 19
-- https://github.com/BenS-DA

-- This script returns any transaction made for anything other than unleaded regular gasoline.
-- Drivers are instructed to refuel with unleaded regular.
-- In the fleet there are only gasoline-operated vehicles.
-- Occasionally some fuel pumps may be down and only mid-grade is available.
-- If somebody is using a company charge card to buy a few hundred gallons of diesel at 2 am that is an obvious red flag.

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
	WHERE `Product Description` <> 'Unleaded Regular'