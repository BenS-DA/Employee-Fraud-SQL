-- Employee-Fraud-SQL
-- MySQL Script 18 of 19
-- https://github.com/BenS-DA

-- It is unusual for drivers to purchase fuel more than once daily.
-- Twice is a day is something that happens infrequently.
-- Thrice is a clear fraud indicator.

-- As the analysis had progressed to this point, stakeholders narrowed their focus to
-- transactions made with New York-based charge cards. 

-- This query counts the number of multiple transactions conducted in New York

USE fuel;
SELECT `Card Number`, DATE(`Transaction Date`) AS transaction_day, COUNT(*) AS transaction_count
FROM charges
WHERE `Merchant State / Province` = 'NY'
GROUP BY `Card Number`, DATE(`Transaction Date`)
HAVING transaction_count > 1; 

