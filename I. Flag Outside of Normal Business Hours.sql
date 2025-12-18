-- Employee-Fraud-SQL
-- MySQL Script 9 of 19
-- https://github.com/BenS-DA

-- This script flags any transactions that are outside of normal
-- business hours (6:30 am to 4 pm Eastern time).


USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Irregular Hours` = CASE
	WHEN 
    (`Transaction Time` < '06:29:00' OR
`Transaction Time` > '17:46:00')
    THEN TRUE
	ELSE FALSE
END