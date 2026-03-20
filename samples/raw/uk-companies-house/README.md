# UK Companies House

- **Source:** UK Companies House
- **Full download:** `https://download.companieshouse.gov.uk/en_output.html`
- **License:** Open Government Licence v3.0
- **Catalog entry:** [CATALOG.md — UK Companies House](../../../CATALOG.md#uk-companies-house)

## Files

### companies-sample.csv

CSV with header row. Key columns:

| Column                          | Description                        |
|---------------------------------|------------------------------------|
| CompanyName                     | Registered company name            |
| CompanyNumber                   | Unique registration number         |
| RegAddress.CareOf               | Care-of name                       |
| RegAddress.POBox                | PO Box                             |
| RegAddress.AddressLine1         | Street address line 1              |
| RegAddress.AddressLine2         | Street address line 2              |
| RegAddress.PostTown             | Town/city                          |
| RegAddress.County               | County                             |
| RegAddress.Country              | Country                            |
| RegAddress.PostCode             | Postal code                        |
| CompanyCategory                 | Type (Private Limited, PLC, LLP)   |
| CompanyStatus                   | Active, Dissolved, etc.            |
| CountryOfOrigin                 | Country of incorporation           |
| DissolutionDate                 | Date dissolved (if applicable)     |
| IncorporationDate               | Date incorporated (DD/MM/YYYY)     |
| Accounts.AccountRefDay          | Accounting reference day           |
| Accounts.AccountRefMonth        | Accounting reference month         |
| Accounts.NextDueDate            | Next accounts due date             |
| Accounts.LastMadeUpDate         | Last accounts made-up date         |
| Accounts.AccountCategory        | Account category (e.g. DORMANT)    |
| Returns.NextDueDate             | Next return due date               |
| Returns.LastMadeUpDate          | Last return made-up date           |
| Mortgages.NumMortCharges        | Number of mortgage charges         |
| Mortgages.NumMortOutstanding    | Number outstanding                 |
| Mortgages.NumMortPartSatisfied  | Number partly satisfied            |
| Mortgages.NumMortSatisfied      | Number satisfied                   |
| SICCode.SicText_1 through _4   | Industry classification codes      |
| LimitedPartnerships.NumGenPartners  | Number of general partners     |
| LimitedPartnerships.NumLimPartners  | Number of limited partners     |
| URI                             | Companies House URI                |
| PreviousName_1 through _10.CONDATE  | Previous name change date      |
| PreviousName_1 through _10.CompanyName | Previous company name       |
| ConfStmtNextDueDate             | Next confirmation statement due    |
| ConfStmtLastMadeUpDate          | Last confirmation statement date   |

## Entity types

Organizations (UK-registered companies).
