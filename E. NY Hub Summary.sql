-- Employee-Fraud-SQL
-- MySQL Script 4 of 5
-- https://github.com/BenS-DA

-- This script provides summary stats for the updated table.
-- As explained in the README, stakeholders eventually narrowed their focus on New York Hub transactions.

USE fuel;

SELECT 
COUNT(`Trans ID`) AS 'COUNT: Outside of Service Area - NY Hub',
SUM(`Net Cost`) AS 'SUM: Outside of Service Area - NY Hub' 
FROM charges
WHERE `Outside of Service Area` = 1 AND `Hub` = 'NY';

SELECT 
COUNT(`Trans ID`) AS 'COUNT: Out of State - NY Hub',
SUM(`Net Cost`) AS 'SUM: Out of State - NY Hub' 
FROM charges
WHERE `Outside of Home States` = 1 AND `Hub` = 'NY';

SELECT
COUNT(`Trans ID`) AS 'COUNT: Holiday - NY Hub',
SUM(`Net Cost`) AS 'SUM: Holiday - NY Hub' 
FROM charges
WHERE `Holiday` = 1 AND `Hub` = 'NY';

SELECT
COUNT(`Trans ID`) AS 'COUNT: Weekend - NY Hub',
SUM(`Net Cost`) AS 'SUM: Weekend - NY Hub' 
FROM charges
WHERE `Weekend` = 1 AND `Hub` = 'NY';

SELECT
COUNT(`Trans ID`) AS 'COUNT: Irregular Hours - NY Hub',
SUM(`Net Cost`) AS 'SUM: Irregular Hours - NY Hub' 
FROM charges
WHERE `Irregular Hours` = 1 AND `Hub` = 'NY';

SELECT
COUNT(`Trans ID`) AS 'COUNT: Not Unleaded Regular - NY Hub',
SUM(`Net Cost`) AS 'SUM: Not Unleaded Regular - NY Hub' 
FROM charges
WHERE `Not Unleaded Regular` = 1 AND `Hub` = 'NY';

SELECT
COUNT(`Trans ID`) AS 'COUNT: Purchase > $100 - NY Hub',
SUM(`Net Cost`) AS 'SUM: Purchase > $100 - NY Hub' 
FROM charges
WHERE `Purchase > $100` = 1 AND `Hub` = 'NY';

SELECT
COUNT(`Trans ID`) AS 'COUNT: All Suspicious Flags - NY Hub',
SUM(`Net Cost`) AS 'SUM: All Suspicious Flags  - NY Hub',
AVG(`Net Cost`) AS 'AVERAGE: All Suspicious Flags  - NY Hub'
FROM charges
WHERE 
(
(
`Outside of Service Area` = 1 OR
`Outside of Home States` = 1 OR
`Holiday` = 1 OR
`Weekend` = 1 OR
`Irregular Hours` = 1 OR
`Not Unleaded Regular` = 1 OR
`Purchase > $100` = 1
)
AND `Hub` = 'NY');

