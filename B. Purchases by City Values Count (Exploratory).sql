-- Employee-Fraud-SQL
-- MySQL Script 2 of 5
-- https://github.com/BenS-DA

-- This script returns the number of purchases made in each city for each geographic hub.
-- While exploratory, this list informs management of unusual locations
-- suggesting fraud. Stakeholders will provide input from this query to 
-- set parameters for future queries that flag suspicious locations.

USE fuel;

SELECT
`Merchant City`,
COUNT(*) AS 'Connecticut Hub'
FROM charges
WHERE `Merchant State / Province` = 'CT'
GROUP BY `Merchant City`
ORDER BY COUNT(*) DESC;

SELECT
`Merchant City`,
COUNT(*) AS 'New York Hub'
FROM charges
WHERE `Merchant State / Province` = 'NY'
GROUP BY `Merchant City`
ORDER BY COUNT(*) DESC;
