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

    # Description
    description = ""

    if cve.get("descriptions"):
        description = cve["descriptions"][0].get("value", "")

    # CVSS information
    cvss_score = None
    severity = None

    metrics = cve.get("metrics", {})

    # CVSS 4.0
    if "cvssMetricV40" in metrics:
        cvss_data = metrics["cvssMetricV40"][0]["cvssData"]

        cvss_score = cvss_data.get("baseScore")
        severity = cvss_data.get("baseSeverity")

    # CVSS 3.1
    elif "cvssMetricV31" in metrics:
        cvss_data = metrics["cvssMetricV31"][0]["cvssData"]

        cvss_score = cvss_data.get("baseScore")
        severity = cvss_data.get("baseSeverity")

    # CVSS 3.0
    elif "cvssMetricV30" in metrics:
        cvss_data = metrics["cvssMetricV30"][0]["cvssData"]

        cvss_score = cvss_data.get("baseScore")
        severity = cvss_data.get("baseSeverity")

    # CVSS 2.0
    elif "cvssMetricV2" in metrics:
        cvss_data = metrics["cvssMetricV2"][0]["cvssData"]

        cvss_score = cvss_data.get("baseScore")

        # CVSS v2 doesn't always provide baseSeverity,
        # so derive it from the score
        if cvss_score is not None:

            if cvss_score >= 7.0:
                severity = "HIGH"

            elif cvss_score >= 4.0:
                severity = "MEDIUM"

            else:
                severity = "LOW"

    records.append({
        "CVE_ID": cve_id,
        "Published_Date": published,
        "Last_Modified": modified,
        "Severity": severity,
        "CVSS_Score": cvss_score,
        "Description": description
    })


df = pd.DataFrame(records)

# Convert dates
df["Published_Date"] = pd.to_datetime(
    df["Published_Date"],
    errors="coerce"
)

df["Last_Modified"] = pd.to_datetime(
    df["Last_Modified"],
    errors="coerce"
)

# Remove duplicate CVEs
df = df.drop_duplicates(subset=["CVE_ID"])

# Sort
df = df.sort_values("Published_Date")

# Save cleaned API dataset
df.to_csv("NVD_CVE_Processed.csv", index=False)

print("\nCSV Created Successfully!")

print("\nTotal CVEs:", len(df))

print("\nSeverity Distribution:")
print(df["Severity"].value_counts(dropna=False))

print("\nMissing CVSS Scores:", df["CVSS_Score"].isna().sum())

print("\nMissing Severity:", df["Severity"].isna().sum())

print("\nSample Data:")
print(df.head())