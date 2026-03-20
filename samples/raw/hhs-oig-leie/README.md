# HHS OIG List of Excluded Individuals/Entities (LEIE)

- **Source:** US Dept. of Health and Human Services, Office of Inspector General
- **Full download:** `https://oig.hhs.gov/exclusions/exclusions_list.asp`
- **Catalog entry:** [CATALOG.md — HHS OIG LEIE](../../../CATALOG.md#hhs-oig-list-of-excluded-individualsentities-leie)

## Files

### leie-sample.csv

CSV with header row. Columns:

| Column    | Description                                       |
|-----------|---------------------------------------------------|
| LASTNAME  | Last name (empty for organizations)               |
| FIRSTNAME | First name (empty for organizations)              |
| MIDNAME   | Middle name                                       |
| BUSNAME   | Business/organization name (empty for individuals)|
| GENERAL   | General classification                            |
| SPECIALTY | Provider specialty                                |
| UPIN      | Unique Physician Identification Number             |
| NPI       | National Provider Identifier (10-digit)           |
| DOB       | Date of birth (YYYYMMDD)                          |
| ADDRESS   | Street address                                    |
| CITY      | City                                              |
| STATE     | State (2-letter code)                             |
| ZIP       | ZIP code                                          |
| EXCLTYPE  | Exclusion authority code (e.g. 1128a1)            |
| EXCLDATE  | Exclusion date (YYYYMMDD)                         |
| REINDATE  | Reinstatement date (00000000 if still excluded)   |
| WAIVERDATE| Waiver date                                       |
| WVRSTATE  | Waiver state                                      |

## Entity types

Persons (healthcare providers) and organizations excluded from federal
healthcare programs.
