# GLEIF Global LEI Data

- **Source:** Global Legal Entity Identifier Foundation
- **Full download:** `https://www.gleif.org/en/lei-data/gleif-concatenated-file/download-the-concatenated-file`
- **License:** CC0 (public domain)
- **Catalog entry:** [CATALOG.md — GLEIF LEI](../../../CATALOG.md#gleif-global-lei-data)
- **CORD equivalent:** `cord/las-vegas/gleif.jsonl`, `cord/london/gleif.jsonl`, `cord/moscow/gleif.jsonl`

## Files

### gleif-lei-sample.csv

CSV with header row. Key columns (many more exist):

| Column                            | Description                       |
|-----------------------------------|-----------------------------------|
| LEI                               | 20-character Legal Entity ID      |
| Entity.LegalName                  | Official legal name               |
| Entity.LegalName.xmllang          | Language code of legal name       |
| Entity.OtherEntityNames.*         | Alternate/trade names             |
| Entity.LegalAddress.FirstAddressLine | Street address (legal)         |
| Entity.LegalAddress.City          | City (legal address)              |
| Entity.LegalAddress.Region        | Region/state code                 |
| Entity.LegalAddress.Country       | ISO country code                  |
| Entity.LegalAddress.PostalCode    | Postal code                       |
| Entity.HeadquartersAddress.*      | HQ address (same sub-fields)      |
| Entity.EntityCategory             | FUND, BRANCH, SOLE_PROPRIETOR, etc.|
| Entity.EntityStatus               | ACTIVE, INACTIVE                  |
| Registration.RegistrationAuthorityID | Local registry authority        |
| Registration.RegistrationAuthorityEntityID | Local registration number |

## Entity types

Organizations (legal entities with LEI registrations worldwide).
