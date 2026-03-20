# London CORD

10-record samples from the London CORD (Collections Of Relatable Data).
International data covering central London.

- **Full dataset:** 123,911 records across 5 sources
- **Download URLs:** See [CATALOG.md — London CORD](../../../CATALOG.md#london-cord-123911-records-5-sources)
- **License:** Evaluation/testing only, not operational use

## Files

| File                | DATA_SOURCE    | Entity Types       | Key Senzing Fields |
|---------------------|----------------|--------------------|--------------------|
| gleif.jsonl         | GLEIF          | Organizations      | NAME_ORG, ADDR_*, REGISTRATION_NUMBER, LEI_NUMBER |
| globaldata.jsonl    | GLOBALDATA     | Organizations      | tr_name, company_type, sic_code, employees_number, ADDR_* |
| icij.jsonl          | ICIJ           | Organizations      | PRIMARY_NAME_ORG, Jurisdiction, ICIJ_SOURCE, Status |
| ofac.jsonl          | OFAC           | Persons, Orgs      | NAME_FULL/NAME_ORG, ADDR_*, DATE_OF_BIRTH, NATIONALITY, PASSPORT_NUMBER, SDN_PROGRAM |
| open-sanctions.jsonl| OPEN-SANCTIONS | Persons, Orgs      | NAME_FULL/NAME_ORG, ADDR_*, DATE_OF_BIRTH, NATIONALITY, REGISTRATION_NUMBER |

## Raw equivalents

| CORD Source    | Raw Sample |
|----------------|------------|
| GLEIF          | [samples/raw/gleif-lei/](../../raw/gleif-lei/) |
| ICIJ           | [samples/raw/icij-offshore-leaks/](../../raw/icij-offshore-leaks/) |
| OFAC           | [samples/raw/ofac-sdn/](../../raw/ofac-sdn/) |
| OPEN-SANCTIONS | [samples/raw/opensanctions/](../../raw/opensanctions/) |
