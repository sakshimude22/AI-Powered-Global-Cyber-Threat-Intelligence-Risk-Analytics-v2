# AI-Powered-Global-Cyber-Threat-Intelligence-Risk-Analytics-v2

## Project Overview

This project is an end-to-end cybersecurity analytics solution designed to analyze global cyber threats, vulnerabilities, financial impact, and incident response trends. The project combines cybersecurity threat data from a Kaggle dataset with vulnerability intelligence retrieved from the National Vulnerability Database (NVD) API.

The objective is to transform raw cybersecurity data into actionable insights using data cleaning, exploratory data analysis, SQL-based business analysis, API integration, Power BI dashboards, and AI-assisted risk assessment.

## Business Problem

Organizations face increasing cybersecurity risks from ransomware, phishing, DDoS attacks, malware, and software vulnerabilities. Security teams require data-driven insights to identify threat patterns, assess financial impact, prioritize vulnerabilities, and improve incident response strategies.

This project aims to answer questions such as:

* Which cyber attacks are most common?
* Which industries are most frequently targeted?
* What is the financial impact of cyber incidents?
* Which vulnerabilities present the highest risk?
* How effective are current defense mechanisms?
* What trends can be observed in global cyber threats?

## Tech Stack

* Python
* Pandas
* NumPy
* SQL Server
* Power BI
* NVD API
* Excel
* Git
* GitHub

## Project Workflow

Raw Data
→ Excel Cleaning
→ Python Cleaning & EDA
→ API Integration (NVD CVE Data)
→ SQL Analysis
→ Power BI Dashboard
→ AI Insights & Risk Assessment

## Key KPIs

### Cyber Threat Dataset

* Total Cyber Attacks
* Total Financial Loss
* Average Incident Resolution Time
* Average Affected Users
* Attack Trends by Year
* Top Attack Types
* Industry-wise Threat Analysis

### NVD Vulnerability Dataset

* Total CVEs
* Average CVSS Score
* Critical CVEs
* High Severity CVEs
* Severity Distribution
* CVE Publication Trends

## Dashboard Pages

### Executive Summary

Provides an overview of cyber attacks, financial losses, affected users, and yearly attack trends.
<img width="578" height="322" alt="Screenshot 2026-09-25 232204" src="https://github.com/user-attachments/assets/d75211ed-1773-4a31-9349-2740210c8209" />


### Threat Intelligence Analysis

Analyzes attack types, target industries, attack sources, countries affected, vulnerabilities, and defense mechanisms.
<img width="578" height="320" alt="Screenshot 2026-09-25 232533" src="https://github.com/user-attachments/assets/d376066e-9220-4e81-a472-b8e566722f25" />


### Vulnerability Intelligence

Analyzes NVD CVEs using severity distribution, CVSS scores, publication trends, and high-risk vulnerabilities.
<img width="578" height="326" alt="image" src="https://github.com/user-attachments/assets/c691d0fd-9187-4379-a051-dc96a0a7d7c2" />


## AI Insights

AI-assisted analysis was used to generate:

* Threat Insights
* Risk Assessment
* Security Recommendations
* Future Threat Trends

## Key Findings

* Ransomware, phishing, DDoS, malware, SQL injection, and man-in-the-middle attacks were among the most frequently observed threats.
* Financial losses associated with cyber incidents highlight the importance of proactive cybersecurity measures.
* High-severity vulnerabilities represent a significant portion of analyzed CVEs.
* Incident response time plays an important role in minimizing operational and financial impact.
* Continuous monitoring and vulnerability management are critical for reducing cybersecurity risk.

## Future Improvements

* Real-time threat intelligence integration
* Automated vulnerability monitoring
* Advanced predictive risk analytics
* Machine learning-based threat forecasting
* Live cybersecurity dashboard deployment


# Project Folder Structure

```text
Cyber-Threat-Analytics/
│
├── 01_Raw_Data/
│   ├── Global_Cybersecurity_Threats.csv
│   ├── Data_Quality_Audit.csv
│   ├── Cleaning_Log.csv
│   └── NVD_CVE_Raw.csv
│
├── 02_Cleaned_Data/
│   ├── Global_Cybersecurity_Threats-2015-2024(cleaned data).csv
│   
├── 03_Data_Dictionary/
│   ├── Global_Cybersecurity_Threats-2015-2024(Data_dictionary).csv
│
├── 04_Python_Cleaning/
│   ├── Data_Cleaning.ipynb
│   ├── Cleaned_Data_Python.csv
│   ├── EDA_Report.pdf
│   └── NVD_CVE_Cleaning.ipynb
│
├── 05_API_Integration/
│   ├── Fetch_NVD_CVE.py
│   ├── API_Documentation.md
│   └── NVD_CVE_Processed.csv
│
├── 06_SQL_Analysis/
│   ├── Table_Creation.sql
│   ├── Data_Validation.sql
│   ├── Business_Queries.sql
│   └── CVE_Analysis.sql
│
├── 07_AI_Analysis/
│   ├── AI_Prompts.md
│   └── AI_Insights_Report.pdf
│
├── 08_PowerBI/
│   └── CyberThreatDashboard.pbix
│
└── README.md
```
