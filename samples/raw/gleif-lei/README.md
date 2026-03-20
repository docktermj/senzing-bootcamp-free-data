# GLEIF Global LEI Data

- **Source:** Global Legal Entity Identifier Foundation
- **Full download:** `https://www.gleif.org/en/lei-data/gleif-concatenated-file/download-the-concatenated-file`
- **License:** CC0 (public domain)
- **Catalog entry:** [CATALOG.md — GLEIF LEI](../../../CATALOG.md#gleif-global-lei-data)
- **CORD equivalent:** `cord/las-vegas/gleif.jsonl`, `cord/london/gleif.jsonl`, `cord/moscow/gleif.jsonl`

## Files

### gleif-lei-sample.csv

CSV with header row. Key columns (many more exist):

The CSV has 300+ columns. Key column groups for entity resolution:

| Column                                              | Description                       |
|-----------------------------------------------------|-----------------------------------|
| LEI                                                 | 20-character Legal Entity ID      |
| Entity.LegalName                                    | Official legal name               |
| Entity.LegalName.xmllang                            | Language code of legal name       |
| Entity.OtherEntityNames.OtherEntityName.N           | Alternate/trade names (N=1..5)    |
| Entity.TransliteratedOtherEntityNames.*             | Transliterated name variants      |
| Entity.LegalAddress.FirstAddressLine                | Street address (legal)            |
| Entity.LegalAddress.AddressNumber                   | Building number                   |
| Entity.LegalAddress.AdditionalAddressLine.N         | Additional address lines (N=1..3) |
| Entity.LegalAddress.City                            | City (legal address)              |
| Entity.LegalAddress.Region                          | Region/state code                 |
| Entity.LegalAddress.Country                         | ISO country code                  |
| Entity.LegalAddress.PostalCode                      | Postal code                       |
| Entity.HeadquartersAddress.*                        | HQ address (same sub-fields)      |
| Entity.LegalJurisdiction                            | Jurisdiction of incorporation     |
| Entity.EntityCategory                               | FUND, BRANCH, SOLE_PROPRIETOR     |
| Entity.EntitySubCategory                            | Sub-category                      |
| Entity.LegalForm.EntityLegalFormCode                | Legal form code                   |
| Entity.EntityStatus                                 | ACTIVE, INACTIVE                  |
| Entity.EntityCreationDate                           | Date entity was created           |
| Entity.EntityExpirationDate                         | Date entity expired               |
| Entity.RegistrationAuthority.RegistrationAuthorityID| Local registry authority code     |
| Entity.RegistrationAuthority.RegistrationAuthorityEntityID | Local registration number  |
| Registration.InitialRegistrationDate                | LEI first registered              |
| Registration.LastUpdateDate                         | LEI last updated                  |
| Registration.RegistrationStatus                     | ISSUED, LAPSED, etc.              |
| Registration.NextRenewalDate                        | Next LEI renewal date             |
| Registration.ManagingLOU                            | Managing Local Operating Unit     |
| Registration.ValidationSources                      | Validation source type            |

## Entity types

Organizations (legal entities with LEI registrations worldwide).
