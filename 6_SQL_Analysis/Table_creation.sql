CREATE TABLE Global_Cybersecurity_Threats
(
    country VARCHAR(100),
    year INT,
    attack_type VARCHAR(100),
    target_industry VARCHAR(100),
    financial_loss_million_usd FLOAT,
    number_of_affected_users BIGINT,
    attack_source VARCHAR(100),
    security_vulnerability_type VARCHAR(200),
    defense_mechanism_used VARCHAR(200),
    incident_resolution_time_hours FLOAT
);

CREATE TABLE NVD_CVE_Processed
(
    cve_id VARCHAR(50),
    published_date DATETIME,
    last_modified DATETIME,
    severity VARCHAR(50),
    cvss_score FLOAT,
    description VARCHAR(MAX)
);