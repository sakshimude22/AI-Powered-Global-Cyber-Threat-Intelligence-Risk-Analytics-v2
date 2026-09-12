-- Total CVEs
select count(*) as Total_CVEs
from NVD_CVE_Processed;
/* 100 */

-- Severity Distribution
select severity, count(*) as Total
from NVD_CVE_Processed
group by Severity
order by Total desc;
/*
NULL	98
CRITICAL	1
HIGH	1
*/

-- Average CVSS Score
select avg(cvss_score) as avg_cvss
from NVD_CVE_Processed;
/*
9.09999990463257 */

-- Top Critical CVEs
select top 10 CVE_ID, CVSS_Score, Severity
from NVD_CVE_Processed
order by CVSS_Score desc;
/*
CVE-1999-0066	9.80000019073486	CRITICAL
CVE-1999-0084	8.39999961853027	HIGH
CVE-1999-0082	NULL	NULL
CVE-1999-0077	NULL	NULL
CVE-1999-0151	NULL	NULL
CVE-1999-0145	NULL	NULL
CVE-1999-0124	NULL	NULL
CVE-1999-0120	NULL	NULL
CVE-1999-0117	NULL	NULL
CVE-1999-0113	NULL	NULL
*/

-- CVEs by Year
select YEAR(published_date) as CVE_year,
count(*) as total_cves
from NVD_CVE_Processed
group by year(published_date)
order by CVE_year;
/*
1988	2
1989	3
1990	11
1991	15
1992	14
1993	13
1994	26
1995	16
*/
