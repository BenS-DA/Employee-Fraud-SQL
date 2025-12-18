USE fuel;

SET SQL_SAFE_UPDATES =0;

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
