-- Employee-Fraud-SQL
-- MySQL Script 8 of 19
-- https://github.com/BenS-DA

-- This script returns any transactions made outside of normal business hours 
-- defined as before 6:29 am and after 4:01 pm.

USE fuel;

SELECT 
`Transaction Date`,
`Transaction Time`,
`Card Number`,
`Trans ID`, 
`Units`,
`Unit Cost`,
`Net Cost`,
`Product Description`,
`Merchant City`,
`Merchant State / Province`

FROM
charges

WHERE

(`Transaction Time` < '06:29:00' 
OR
`Transaction Time` > '17:46:00')

ORDER BY
`Transaction Time` DESC;

