# USASpending.gov Award Data

- **Source:** US Treasury / USASpending.gov
- **Full download:** `https://www.usaspending.gov/download_center/award_data_archive`
- **API docs:** `https://api.usaspending.gov/`
- **Catalog entry:** [CATALOG.md — USASpending](../../../CATALOG.md#usaspendinggov-award-recipients)
- **License:** US government public domain

## Files

### awards-sample.json

JSON response from the USASpending search API. Structure:

```
{
  "spending_level": "awards",
  "limit": 100,
  "results": [ ... ],
  "page_metadata": { "page": ..., "hasNext": ..., ... },
  "messages": [ ... ]
}
```

Each result object contains:

| Field                           | Description                      |
|---------------------------------|----------------------------------|
| internal_id                     | Internal award ID (numeric)      |
| Award ID                        | Federal award identifier         |
| Recipient Name                  | Organization name                |
| Recipient DUNS Number           | DUNS identifier (legacy, often null) |
| Place of Performance City Code  | City FIPS code                   |
| Place of Performance State Code | State code                       |
| Award Amount                    | Dollar amount                    |
| Awarding Agency                 | Federal agency name              |
| Awarding Sub Agency             | Sub-agency name                  |
| recipient_id                    | Internal recipient UUID          |
| awarding_agency_id              | Internal agency ID (numeric)     |
| agency_slug                     | URL-friendly agency name         |
| generated_internal_id           | Composite award identifier       |

## Entity types

Organizations (federal award recipients — contractors, grantees).
