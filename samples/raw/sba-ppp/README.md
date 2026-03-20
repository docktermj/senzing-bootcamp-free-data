# SBA Paycheck Protection Program (PPP) Loan Data

- **Source:** US Small Business Administration (FOIA release)
- **Full download:** `https://data.sba.gov/dataset/ppp-foia`
- **Catalog entry:** [CATALOG.md — SBA PPP](../../../CATALOG.md#sba-ppp-loan-data)
- **CORD equivalent:** `cord/las-vegas/ppp-loans.jsonl`

## Files

### ppp-loans-sample.csv

CSV with header row. Key columns:

| Column                 | Description                            |
|------------------------|----------------------------------------|
| LoanNumber             | Unique loan identifier                 |
| DateApproved           | Approval date (MM/DD/YYYY)             |
| BorrowerName           | Business name                          |
| BorrowerAddress        | Street address                         |
| BorrowerCity           | City                                   |
| BorrowerState          | State (2-letter code)                  |
| BorrowerZip            | ZIP code                               |
| LoanStatus             | "Paid in Full", "Exemption 4", etc.    |
| InitialApprovalAmount  | Loan amount                            |
| ServicingLenderName    | Lender name                            |
| ServicingLenderAddress | Lender address                         |
| ServicingLenderCity    | Lender city                            |
| ServicingLenderState   | Lender state                           |
| BusinessType           | Corporate structure                    |
| NAICSCode              | Industry classification                |
| JobsReported           | Number of jobs reported                |

## Entity types

Organizations (small businesses that received PPP loans).
