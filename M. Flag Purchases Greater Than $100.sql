-- Employee-Fraud-SQL
-- MySQL Script 13 of 19
-- https://github.com/BenS-DA

-- This script flags any purchases over $100.

USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Purchase > $100` = CASE
 	WHEN `Net Cost` > 100
    THEN TRUE
    ELSE FALSE
END