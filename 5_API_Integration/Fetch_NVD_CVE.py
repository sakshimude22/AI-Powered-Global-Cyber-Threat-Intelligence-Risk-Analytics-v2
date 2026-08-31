import requests
import pandas as pd

url = "https://services.nvd.nist.gov/rest/json/cves/2.0"

params = {
    "resultsPerPage": 100
}

response = requests.get(url, params=params)

print("Status Code:", response.status_code)

data = response.json()

records = []

for item in data["vulnerabilities"]:

    cve = item["cve"]

    cve_id = cve.get("id")

    published = cve.get("published")

    modified = cve.get("lastModified")

    description = ""

    if cve.get("descriptions"):
        description = cve["descriptions"][0]["value"]

    severity = None
    cvss_score = None

    metrics = cve.get("metrics", {})

    if "cvssMetricV31" in metrics:

        severity = metrics["cvssMetricV31"][0]["cvssData"]["baseSeverity"]

        cvss_score = metrics["cvssMetricV31"][0]["cvssData"]["baseScore"]

    records.append({
        "CVE_ID": cve_id,
        "Published_Date": published,
        "Last_Modified": modified,
        "Severity": severity,
        "CVSS_Score": cvss_score,
        "Description": description
    })

df = pd.DataFrame(records)

df.to_csv("NVD_CVE_Processed.csv", index=False)

print("CSV Created Successfully!")
print(df.head())