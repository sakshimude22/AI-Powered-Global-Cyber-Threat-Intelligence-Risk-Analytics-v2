-- 1] Count the total number of records in the cleaned data
select count(*) as Total_Records
from [cleaned_data(python)];

-- 2] Null Checks
select * 
from [cleaned_data(python)]
where country is null;

-- 3] Duplicate Check
SELECT country,
       year,
       attack_type,
       COUNT(*) AS Duplicate_Count
FROM [cleaned_data(python)]
GROUP BY country,year,attack_type
HAVING COUNT(*) > 1;

-- 4] Distict Attack Types
select distinct attack_type
from [cleaned_data(python)];

