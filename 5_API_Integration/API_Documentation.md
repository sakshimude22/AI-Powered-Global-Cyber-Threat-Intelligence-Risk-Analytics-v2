# NVD API Integration Documentation

## API Source

National Vulnerability Database (NVD)

## Endpoint

https://services.nvd.nist.gov/rest/json/cves/2.0

## Purpose

The NVD API is used to retrieve publicly disclosed Common Vulnerabilities and Exposures (CVEs). The data provides information about cybersecurity vulnerabilities including severity ratings, CVSS scores, publication dates, and vulnerability descriptions.

## Technologies Used

* Python
* Requests
* Pandas

## Workflow

1. Send GET request to the NVD API.
2. Receive JSON response.
3. Extract CVE information.
4. Convert JSON data into a Pandas DataFrame.
5. Export processed data into CSV format.
6. Use the dataset for cybersecurity analytics and visualization.

## Output Dataset

NVD_CVE_Processed.csv

### Columns

* CVE_ID
* Published_Date
* Last_Modified
* Severity
* CVSS_Score
* Description
