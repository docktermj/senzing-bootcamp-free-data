# IRS Tax-Exempt Organizations (Publication 78)

- **Source:** US Internal Revenue Service
- **Full download:** `https://apps.irs.gov/pub/epostcard/data-download-pub78.zip`
- **Catalog entry:** [CATALOG.md — IRS 990](../../../CATALOG.md#irs-tax-exempt-organizations-form-990)
- **License:** US government public domain

## Files

### pub78-sample.txt

Pipe-delimited (`|`) text with no header row. Columns:

| Position | Field          | Description                              |
|----------|----------------|------------------------------------------|
| 1        | EIN            | Employer Identification Number (9-digit) |
| 2        | Name           | Organization name                        |
| 3        | City           | City                                     |
| 4        | State          | State (2-letter code)                    |
| 5        | Country        | Country name                             |
| 6        | Deductibility  | Deductibility code (PC, PF, SO, etc.)    |

For richer data (officers, revenue, board members), use the Form 990 XML
filings on S3: `s3://irs-form-990/` (public, `--no-sign-request`).

## Entity types

Organizations (US tax-exempt nonprofits, charities, foundations).
