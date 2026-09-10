-- KPI 1 Total Cyber Attacks
select count(*) as Total_Attacks
from [cleaned_data(python)];
--3000

-- KPI 2 Total Financial Loss
select sum(financial_loss_in_million) as Total_financial_loss
from [cleaned_data(python)];
--151478.909942448

-- KPI 3 Average Resolution Time
select AVG(incident_resolution_time_in_hours) as Avg_resolution_time
from [cleaned_data(python)];
--36

-- Top Attack Types
select attack_type, COUNT(*) as Total_attacks
from [cleaned_data(python)]
group by attack_type
order by Total_attacks desc;
/*
Ddos	531
Phishing	529
Sql Injection	503
Ransomware	493
Malware	485
Man-In-The-Middle	459
*/

-- Top Countries
select country, count(*) as Total_attacks
from [cleaned_data(python)]
group by country
order by Total_attacks desc;
/*
Uk	321
Brazil	310
India	308
Japan	305
France	305
Australia	297
Russia	295
Germany	291
Usa	287
China	281
*/

-- Most Targeted Industries
select target_industry, 
count(*) as Total_attacks
from [cleaned_data(python)]
group by target_industry
order by Total_attacks desc;
/*
It	478
Banking	445
Healthcare	429
Retail	423
Education	419
Government	403
Telecommunications	403
*/

--Financial Loss by Attack Type
select attack_type, 
sum(financial_loss_in_million) as Total_loss
from [cleaned_data(python)]
group by attack_type
order by Total_loss desc;
/*
Ddos	27630.9199623466
Phishing	26693.2899698615
Sql Injection	25156.5599856377
Ransomware	24479.3200336695
Malware	23967.94997859
Man-In-The-Middle	23550.8700123429 */

-- Most Exploited Vulnerabilities
select security_vulnerability_type,
count(*) as Total
from [cleaned_data(python)]
group by security_vulnerability_type
order by Total desc;
/*
Zero-Day	785
Social Engineering	747
Unpatched Software	738
Weak Passwords	730
*/

-- Defense Mechanism Usage
select defense_mechanism_used,
count(*) as usage_count
from [cleaned_data(python)]
group by defense_mechanism_used
order by usage_count desc;
/*
Antivirus	628
Vpn	612
Encryption	592
Firewall	585
Ai-Based Detection	583
*/

-- Highest Affected Users
select top 10
attack_type, avg(number_of_affected_users) as avg_affected_users
from [cleaned_data(python)]
group by attack_type
order by avg_affected_users;
/*
Phishing	487179
Ddos	499437
Ransomware	502825
Malware	508780
Sql Injection	512469
Man-In-The-Middle	520064
*/

-- Yearly Attack Trend
select year, count(*) as Total_attacks
from [cleaned_data(python)]
group by year
order by year;
/*
2015	277
2016	285
2017	319
2018	310
2019	263
2020	315
2021	299
2022	318
2023	315
2024	299
*/
