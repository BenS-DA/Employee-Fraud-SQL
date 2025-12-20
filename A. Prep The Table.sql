-- Employee-Fraud-SQL
-- MySQL Script 1 of 5
-- https://github.com/BenS-DA

-- Upload file 'charges.csv' into MySQL workbench database titled 'fuel'

-- This script sets up the table for MySQL

USE fuel;

SET SQL_SAFE_UPDATES =0;

-- Converts Transaction Date Column from Text to Date Time
-- Avoids glitches with MySQL on other operating systems
UPDATE charges
SET `Transaction Date` = STR_TO_DATE(`Transaction Date`, '%Y-%m-%d');

ALTER TABLE charges
MODIFY COLUMN `Transaction Date` DATE;

-- Converts Transaction Time Column from Text To Time Stamp
UPDATE charges
SET `Transaction Time` = STR_TO_DATE(`Transaction Time`, '%H:%i:%s');

ALTER TABLE charges
MODIFY COLUMN `Transaction Time` TIME;

-- Creates a column to store business hub (New York or Connecticut)

ALTER TABLE charges
ADD `Hub` TEXT;

-- Following lines of code add extra columns for suspicious activity flags

ALTER TABLE charges
ADD `Outside of Home States` BOOLEAN;

ALTER TABLE charges
ADD `Outside of Service Area` BOOLEAN;

ALTER TABLE charges
ADD `Weekend` BOOLEAN;

ALTER TABLE charges
ADD `Holiday` BOOLEAN;

ALTER TABLE charges
ADD `Irregular Hours` BOOLEAN;

ALTER TABLE charges
ADD `Purchase > $100` BOOLEAN;

ALTER TABLE charges
ADD `Not Unleaded Regular` BOOLEAN;

UPDATE charges
SET `Hub` = LEFT(`Card Number`,2)
