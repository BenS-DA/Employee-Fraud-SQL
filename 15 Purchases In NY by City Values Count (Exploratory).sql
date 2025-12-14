-- Employee-Fraud-SQL
-- MySQL Script 15 of 19
-- https://github.com/BenS-DA

-- This script returns the number of purchases made in each city in New York state.
-- While exploratory, this list informs management of unusual locations
-- suggesting fraud. Stakeholders will provide input from this query to 
-- set search parameters for future queries that flag suspicious locations.

SELECT
`Merchant City`,
COUNT(*)
FROM charges
WHERE `Merchant State / Province` = 'NY'
GROUP BY `Merchant City`
ORDER BY COUNT(*) DESC;
