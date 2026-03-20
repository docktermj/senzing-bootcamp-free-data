# NPI National Provider Registry

- **Source:** CMS (Centers for Medicare & Medicaid Services)
- **Full download:** `https://download.cms.gov/nppes/NPI_Files.html`
- **Catalog entry:** [CATALOG.md — NPI Registry](../../../CATALOG.md#npi-national-provider-registry)
- **License:** US government public domain
- **CORD equivalent:** `cord/las-vegas/npi-providers.jsonl`

## Files

### npi-sample.csv

CSV with header row. Has 300+ columns; key ones for entity resolution:

| Column                                        | Description                    |
|-----------------------------------------------|--------------------------------|
| NPI                                           | National Provider Identifier   |
| Entity Type Code                              | 1 = Individual, 2 = Organization|
| Employer Identification Number (EIN)          | IRS EIN (organizations)        |
| Provider Organization Name (Legal Business Name)| Org name (type 2)            |
| Provider Last Name (Legal Name)               | Last name (type 1)             |
| Provider First Name                           | First name (type 1)            |
| Provider Middle Name                          | Middle name                    |
| Provider Name Prefix Text                     | Dr., Mr., etc.                 |
| Provider Name Suffix Text                     | Jr., III, etc.                 |
| Provider Credential Text                      | MD, DO, RN, etc.               |
| Provider First Line Business Mailing Address  | Mailing street address         |
| Provider Business Mailing Address City Name   | Mailing city                   |
| Provider Business Mailing Address State Name  | Mailing state                  |
| Provider Business Mailing Address Postal Code | Mailing ZIP                    |
| Provider Business Mailing Address Country Code| Mailing country                |
| Provider Business Practice Location Address...| Practice address fields        |
| Provider Gender Code                          | M/F (individuals)              |
| Provider Enumeration Date                     | Registration date              |
| Last Update Date                              | Last updated                   |
| Healthcare Provider Taxonomy Code_1           | Specialty taxonomy code        |

## Entity types

Persons (individual healthcare providers) and organizations (group practices,
hospitals, clinics).
