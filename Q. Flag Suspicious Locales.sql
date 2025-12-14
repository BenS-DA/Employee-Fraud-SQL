-- Employee-Fraud-SQL
-- MySQL Script 17 of 19
-- https://github.com/BenS-DA

-- Based on exploratory results in scripts 14 and 15, stakeholders deemed the following
-- locations suspicious:
-- New York: New York City, Bronx, Pelham, Yonkers, Scarsdale
-- Connecticut: Greenwich, Darien, Fairfield

-- This script flags transactions made in these locales

USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Outside of Service Area` = CASE
 	WHEN `Merchant City` IN (
    'Bronx',
    'Yonkers',
    'New York',
    'Pelham',
    'Scarsdale',
    'Greenwich',
    'Darien',
    'Fairfield'
    )
    THEN TRUE
    ELSE FALSE
END
