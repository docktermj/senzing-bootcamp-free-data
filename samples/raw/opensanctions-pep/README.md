# OpenSanctions Politically Exposed Persons (PEPs)

- **Source:** OpenSanctions
- **Full download:** `https://data.opensanctions.org/datasets/latest/peps/targets.simple.csv`
- **License:** CC BY (free for non-commercial use)
- **Catalog entry:** [CATALOG.md — OpenSanctions PEP](../../../CATALOG.md#opensanctions-pep-dataset)

## Files

### pep-sample.csv

Same CSV format as the OpenSanctions consolidated dataset. Columns:

| Column       | Description                                         |
|--------------|-----------------------------------------------------|
| id           | OpenSanctions entity ID                             |
| schema       | Entity type (typically "Person")                    |
| name         | Primary name                                        |
| aliases      | Semicolon-separated alternate names                 |
| birth_date   | Date of birth                                       |
| countries    | ISO country codes                                   |
| addresses    | Semicolon-separated addresses                       |
| identifiers  | ID numbers                                          |
| sanctions    | (usually empty for PEPs)                            |
| phones       | Phone numbers                                       |
| emails       | Email addresses                                     |
| program_ids  | Source identifiers                                  |
| dataset      | Source dataset name                                 |
| first_seen   | First observation timestamp                         |
| last_seen    | Most recent observation timestamp                   |
| last_change  | Last data change timestamp                          |

## Entity types

Persons (politicians, government officials, senior public figures).
