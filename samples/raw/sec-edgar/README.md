# SEC EDGAR Company Data

- **Source:** US Securities and Exchange Commission
- **Full download:** `https://www.sec.gov/files/company_tickers.json`
- **Catalog entry:** [CATALOG.md — SEC EDGAR](../../../CATALOG.md#sec-edgar-company-data)
- **License:** US government public domain

## Files

### company-tickers-sample.json

JSON object keyed by index number. Each entry:

| Field    | Description                              |
|----------|------------------------------------------|
| cik_str  | Central Index Key (unique SEC identifier)|
| ticker   | Stock ticker symbol                      |
| title    | Company name                             |

For richer data (addresses, former names, SIC codes), use the per-company
submissions endpoint: `https://data.sec.gov/submissions/CIK{cik}.json`

## Entity types

Organizations (publicly traded companies, investment funds, foreign private
issuers).
