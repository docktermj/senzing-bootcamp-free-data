# OpenSanctions Consolidated Dataset

- **Source:** OpenSanctions (aggregates 100+ sanctions, watchlist, and PEP sources)
- **Full download:** `https://data.opensanctions.org/datasets/latest/default/targets.simple.csv`
- **License:** CC BY (free for non-commercial use)
- **Catalog entry:** [CATALOG.md — OpenSanctions](../../../CATALOG.md#opensanctions-consolidated-dataset)

## Files

### opensanctions-sample.csv

CSV with header row. Columns:

| Column       | Description                                         |
|--------------|-----------------------------------------------------|
| id           | OpenSanctions entity ID                             |
| schema       | Entity type ("Person", "Company", "LegalEntity")    |
| name         | Primary name                                        |
| aliases      | Semicolon-separated alternate names                 |
| birth_date   | Date of birth (persons)                             |
| countries    | ISO country codes (comma-separated)                 |
| addresses    | Semicolon-separated addresses                       |
| identifiers  | IDs (passport numbers, registration numbers, etc.)  |
| sanctions    | Sanctions program names                             |
| phones       | Phone numbers                                       |
| emails       | Email addresses                                     |
| program_ids  | Source program identifiers                          |
| dataset      | Source dataset names (semicolon-separated)           |
| first_seen   | First observation timestamp                         |
| last_seen    | Most recent observation timestamp                   |
| last_change  | Last data change timestamp                          |

## Entity types

Persons and organizations from sanctions lists worldwide.
