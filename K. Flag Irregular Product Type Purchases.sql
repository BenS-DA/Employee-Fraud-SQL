-- Employee-Fraud-SQL
-- MySQL Script 11 of 19
-- https://github.com/BenS-DA

-- This script flags any purchases that were not unleaded regular grade fuel.

USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Not Unleaded Regular` = CASE
 	WHEN `Product Description` <> 'Unleaded Regular'
    THEN TRUE
    ELSE FALSE
END