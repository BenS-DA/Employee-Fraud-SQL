-- Employee-Fraud-SQL
-- MySQL Script 3 of 19
-- https://github.com/BenS-DA

-- This flags any transaction outside of NY and CT
-- where the agency does not operate.

USE fuel;

SET SQL_SAFE_UPDATES =0;

UPDATE charges
SET `Outside of Home States` = CASE
 	WHEN `Merchant State / Province` NOT IN ('CT','NY')
    THEN TRUE
    ELSE FALSE
END
    