-- Employee-Fraud-SQL
-- MySQL Script 3 of 5
-- https://github.com/BenS-DA

-- This script flags potentially fraudulent card transactions based on
-- Location (in-state but out of service area, out-of-state)
-- Holidays and weekends (in this case, July 4, 2024 as well as any purchase made on Saturday or Sunday)
-- Non-business hours (before 6:29 am and after 5:46 pm).
-- Product type. Anything other than unleaded regular gasoline.
-- Any purchases over $100.
-- The also returns individual transactions that have been flagged which are exported to Microsoft Excel format.
 
USE fuel;

SET SQL_SAFE_UPDATES =0;

-- Stakeholders determined these locations based on earlier exploratory data analysis. See Script B. 
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
END;

UPDATE charges
SET `Outside of Home States` = CASE
 	WHEN `Merchant State / Province` NOT IN ('CT','NY')
    THEN TRUE
    ELSE FALSE
END;
        
UPDATE charges
SET `Holiday` = CASE
	WHEN DATE (`Transaction Date`) = '2024-07-04'
	THEN TRUE
	ELSE FALSE
END;

UPDATE charges
SET `Weekend` = CASE
	WHEN DAYOFWEEK (`Transaction Date`) IN (1,7)
	THEN TRUE
	ELSE FALSE
END;

UPDATE charges
SET `Irregular Hours` = CASE
	WHEN 
    (`Transaction Time` < '06:29:00' OR
`Transaction Time` > '17:46:00')
    THEN TRUE
	ELSE FALSE
END;

UPDATE charges
SET `Not Unleaded Regular` = CASE
 	WHEN `Product Description` <> 'Unleaded Regular'
    THEN TRUE
    ELSE FALSE
END;

UPDATE charges
SET `Purchase > $100` = CASE
 	WHEN `Net Cost` > 100
    THEN TRUE
    ELSE FALSE
END;

SELECT 
`Hub`,
`Transaction Date`,
`Transaction Time`,
`Card Number`,
`Trans ID`, 
`Units`,
`Unit Cost`,
`Net Cost`,
`Product Description`,
`Merchant City`,
`Merchant State / Province`,
`Outside of Home States`,
`Outside of Service Area`,
`Weekend`,
`Holiday`,
`Irregular Hours`,
`Purchase > $100`,
`Not Unleaded Regular`

FROM charges
    
WHERE
(
(
`Outside of Home States` = TRUE
OR
`Outside of Service Area` = TRUE
OR
`Weekend` = TRUE
OR
`Holiday` = TRUE
OR
`Irregular Hours` = TRUE
OR
`Purchase > $100` = TRUE
OR
`Not Unleaded Regular` = TRUE
)

)

ORDER BY `Hub`
