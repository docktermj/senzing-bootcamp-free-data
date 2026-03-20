# Las Vegas CORD

10-record samples from the Las Vegas CORD (Collections Of Relatable Data).
US-focused data covering the Las Vegas metro area.

- **Full dataset:** 214,845 records across 10 sources
- **Download URLs:** See [CATALOG.md — Las Vegas CORD](../../../CATALOG.md#las-vegas-cord-214845-records-10-sources)
- **License:** Evaluation/testing only, not operational use

## Files

| File                      | DATA_SOURCE         | Entity Types       | Key Senzing Fields |
|---------------------------|---------------------|--------------------|--------------------|
| equifax.jsonl             | EQUIFAX             | Persons, Orgs      | PRIMARY_NAME_ORG, BUSINESS_ADDR_*, PRIMARY_PHONE_NUMBER, WEBSITE_ADDRESS, EFX_CREDITSCORE |
| npi-providers.jsonl       | NPI-PROVIDERS       | Persons            | PRIMARY_NAME_FIRST/LAST, NPI_NUMBER, PRIMARY_ADDR_*, MAILING_ADDR_*, GENDER, PROVIDER_LICENSE_NUMS |
| profound.jsonl            | PROFOUND            | Organizations      | PRIMARY_NAME_ORG, BUSINESS_ADDR_*, PRIMARY_PHONE_NUMBER, WEBSITE_ADDRESS, FACEBOOK, TWITTER |
| enformion.jsonl           | ENFORMION           | Persons, Orgs      | PRIMARY_NAME_ORG, NAME_FIRST/LAST, ADDR_*, TRUSTED_ID_NUMBER, BusinessType |
| nomino-risk.jsonl         | NOMINO-RISK         | Persons            | PRIMARY_NAME_FIRST/LAST, ADDR_CITY/STATE/COUNTRY, riskcode, Title, Source |
| ppp-loans.jsonl           | PPP_LOANS           | Organizations      | BUSINESS_NAME_ORG, BUSINESS_ADDR_*, Lender, Loan_Range, JobsReported |
| open-ownership.jsonl      | OPEN-OWNERSHIP      | Persons, Orgs      | NAME_FULL/NAME_ORG, ADDR_*, NATIONALITY, REGISTRATION_NUMBER |
| gleif.jsonl               | GLEIF               | Organizations      | NAME_ORG, ADDR_*, REGISTRATION_NUMBER, LEI_NUMBER |
| us-labor-violations.jsonl | US-LABOR-VIOLATIONS | Organizations      | PRIMARY_NAME_ORG, LEGAL_NAME_ORG, BUSINESS_ADDR_* |
| icij.jsonl                | ICIJ                | Organizations      | PRIMARY_NAME_ORG, Jurisdiction, ICIJ_SOURCE |

## Raw equivalents

To see the original (unmapped) format for sources with raw samples:

| CORD Source    | Raw Sample |
|----------------|------------|
| GLEIF          | [samples/raw/gleif-lei/](../../raw/gleif-lei/) |
| ICIJ           | [samples/raw/icij-offshore-leaks/](../../raw/icij-offshore-leaks/) |
| NPI-PROVIDERS  | [samples/raw/npi-registry/](../../raw/npi-registry/) |
| PPP_LOANS      | [samples/raw/sba-ppp/](../../raw/sba-ppp/) |
