-- Employee-Fraud-SQL
-- MySQL Script 7 of 19
-- https://github.com/BenS-DA

-- This script flags any weekend purchases
-- SQL days 1 and 7 are Sunday and Saturday, respectively.

USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Weekend` = CASE
	WHEN DAYOFWEEK (`Transaction Date`) IN (1,7)
	THEN TRUE
	ELSE FALSE
END