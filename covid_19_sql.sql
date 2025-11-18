SELECT * FROM covid19.full_grouped;

use covid19;

describe full_grouped;

ALTER TABLE full_grouped
CHANGE COLUMN Country_Region country_region VARCHAR(100),
CHANGE COLUMN `New cases` new_cases INT,
CHANGE COLUMN `New deaths` new_deaths INT,
CHANGE COLUMN `New recovered` new_recovered INT,
CHANGE COLUMN WHO_region who_region VARCHAR(100);

UPDATE full_grouped
SET Confirmed = 0 WHERE Confirmed IS NULL;
UPDATE full_grouped
SET Deaths = 0 WHERE Deaths IS NULL;
UPDATE full_grouped
SET Recovered = 0 WHERE Recovered IS NULL;

select country_region,count(date)
from full_grouped
group by country_region;



