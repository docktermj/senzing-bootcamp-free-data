# FEC Campaign Finance Data

- **Source:** Federal Election Commission
- **Full download:** `https://www.fec.gov/data/browse-data/?tab=bulk-data`
- **Catalog entry:** [CATALOG.md — FEC](../../../CATALOG.md#fec-campaign-finance-data)
- **License:** US government public domain

## Files

### candidates-sample.txt

Pipe-delimited (`|`) with no header row. Columns:

| Position | Field            | Description                          |
|----------|------------------|--------------------------------------|
| 1        | CAND_ID          | Candidate ID (e.g. H0AK00105)       |
| 2        | CAND_NAME        | Candidate name (Last, First)         |
| 3        | CAND_PTY_AFFILIATION | Party code (REP, DEM, NNE, etc.)|
| 4        | CAND_ELECTION_YR | Election year                        |
| 5        | CAND_OFFICE_ST   | Office state (2-letter)              |
| 6        | CAND_OFFICE      | Office (H=House, S=Senate, P=Pres)   |
| 7        | CAND_OFFICE_DISTRICT | Congressional district            |
| 8        | CAND_ICI         | Incumbent/Challenger/Open (I/C/O)    |
| 9        | CAND_STATUS      | Candidate status                     |
| 10       | PCC              | Principal Campaign Committee ID      |
| 11       | CAND_ST1         | Street address line 1                |
| 12       | CAND_ST2         | Street address line 2                |
| 13       | CAND_CITY        | City                                 |
| 14       | CAND_ST          | State                                |
| 15       | CAND_ZIP         | ZIP code                             |

### committees-sample.txt

Pipe-delimited (`|`) with no header row. Columns:

| Position | Field            | Description                          |
|----------|------------------|--------------------------------------|
| 1        | CMTE_ID          | Committee ID (e.g. C00000059)        |
| 2        | CMTE_NM          | Committee name                       |
| 3        | TRES_NM          | Treasurer name                       |
| 4        | CMTE_ST1         | Street address line 1                |
| 5        | CMTE_ST2         | Street address line 2                |
| 6        | CMTE_CITY        | City                                 |
| 7        | CMTE_ST          | State                                |
| 8        | CMTE_ZIP         | ZIP code                             |
| 9        | CMTE_DSGN        | Designation (B=Lobbyist, etc.)       |
| 10       | CMTE_TP          | Committee type (Q=Qualified, etc.)   |
| 11       | CMTE_PTY_AFFILIATION | Party code                       |
| 12       | CMTE_FILING_FREQ | Filing frequency                     |
| 13       | ORG_TP           | Organization type                    |
| 14       | CONNECTED_ORG_NM | Connected organization name          |

## Entity types

Persons (candidates, treasurers) and organizations (PACs, committees,
connected organizations).
