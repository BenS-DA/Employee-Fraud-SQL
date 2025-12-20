-- Employee-Fraud-SQL
-- MySQL Script 4 of 5
-- https://github.com/BenS-DA

-- It is unusual for drivers to purchase fuel more than once daily.
-- Twice is a day is something that happens infrequently.
-- Thrice is a reasonable fraud indicator.

-- This query counts the number of multiple transactions conducted by the New York hub.
-- This is exploratory only and informs the final stakeholder data review. Much of this
-- already overlaps the previously flagged data.

USE fuel;
SELECT `Card Number`, DATE(`Transaction Date`) AS transaction_day, COUNT(*) AS transaction_count
FROM charges
WHERE `Merchant State / Province` = 'NY'
GROUP BY `Card Number`, DATE(`Transaction Date`)
HAVING transaction_count > 1; 