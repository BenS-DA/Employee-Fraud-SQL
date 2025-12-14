-- Employee-Fraud-SQL
-- MySQL Script 5 of 19
-- https://github.com/BenS-DA

-- This script flags holiday purchases made in NY and CT
-- On Thursday July 4, 2024 (a holiday in the United States)

USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Holiday` = CASE
	WHEN DATE (`Transaction Date`) = '2024-07-04'
	THEN TRUE
	ELSE FALSE
END
