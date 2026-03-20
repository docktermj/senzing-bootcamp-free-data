# SBA Paycheck Protection Program (PPP) Loan Data

- **Source:** US Small Business Administration (FOIA release)
- **Full download:** `https://data.sba.gov/dataset/ppp-foia`
- **Catalog entry:** [CATALOG.md — SBA PPP](../../../CATALOG.md#sba-ppp-loan-data)
- **License:** US government public domain (FOIA release)
- **CORD equivalent:** `cord/las-vegas/ppp-loans.jsonl`

## Files

### ppp-loans-sample.csv

CSV with header row. Key columns:

| Column                 | Description                            |
|------------------------|----------------------------------------|
| LoanNumber                  | Unique loan identifier                 |
| DateApproved                | Approval date (MM/DD/YYYY)             |
| SBAOfficeCode               | SBA district office code               |
| ProcessingMethod            | Processing method (PPP, PPS)           |
| BorrowerName                | Business name                          |
| BorrowerAddress             | Street address                         |
| BorrowerCity                | City                                   |
| BorrowerState               | State (2-letter code)                  |
| BorrowerZip                 | ZIP code                               |
| LoanStatusDate              | Status date (MM/DD/YYYY)               |
| LoanStatus                  | "Paid in Full", "Exemption 4", etc.    |
| Term                        | Loan term in months                    |
| SBAGuarantyPercentage       | SBA guarantee percentage               |
| InitialApprovalAmount       | Initial loan amount                    |
| CurrentApprovalAmount       | Current loan amount                    |
| UndisbursedAmount           | Undisbursed amount                     |
| FranchiseName               | Franchise name (if applicable)         |
| ServicingLenderLocationID   | Servicing lender location ID           |
| ServicingLenderName         | Servicing lender name                  |
| ServicingLenderAddress      | Servicing lender address               |
| ServicingLenderCity         | Servicing lender city                  |
| ServicingLenderState        | Servicing lender state                 |
| ServicingLenderZip          | Servicing lender ZIP                   |
| RuralUrbanIndicator         | R=Rural, U=Urban                       |
| HubzoneIndicator            | Y/N HUBZone                            |
| LMIIndicator                | Y/N Low-Moderate Income                |
| BusinessAgeDescription      | Business age category                  |
| ProjectCity                 | Project city                           |
| ProjectCountyName           | Project county                         |
| ProjectState                | Project state                          |
| ProjectZip                  | Project ZIP                            |
| CD                          | Congressional district                 |
| JobsReported                | Number of jobs reported                |
| NAICSCode                   | Industry classification (6-digit)      |
| Race                        | Self-reported race                     |
| Ethnicity                   | Self-reported ethnicity                |
| UTILITIES_PROCEED           | Utilities portion                      |
| PAYROLL_PROCEED             | Payroll portion                        |
| MORTGAGE_INTEREST_PROCEED   | Mortgage interest portion              |
| RENT_PROCEED                | Rent portion                           |
| REFINANCE_EIDL_PROCEED      | EIDL refinance portion                 |
| HEALTH_CARE_PROCEED         | Healthcare portion                     |
| DEBT_INTEREST_PROCEED       | Debt interest portion                  |
| BusinessType                | Corporate structure                    |
| OriginatingLenderLocationID | Originating lender location ID         |
| OriginatingLender           | Originating lender name                |
| OriginatingLenderCity       | Originating lender city                |
| OriginatingLenderState      | Originating lender state               |
| Gender                      | Self-reported gender                   |
| Veteran                     | Veteran status                         |
| NonProfit                   | Y/N nonprofit                          |
| ForgivenessAmount           | Amount forgiven                        |
| ForgivenessDate             | Forgiveness date                       |

## Entity types

Organizations (small businesses that received PPP loans).
