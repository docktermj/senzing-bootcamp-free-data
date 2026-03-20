# Moscow CORD

10-record samples from the Moscow CORD (Collections Of Relatable Data).
Cyrillic and non-roman script data covering the Moscow area.

- **Full dataset:** 26,308 records across 6 sources
- **Download URLs:** See [CATALOG.md — Moscow CORD](../../../CATALOG.md#moscow-cord-26308-records-6-sources)
- **License:** Evaluation/testing only, not operational use

## Files

| File                 | DATA_SOURCE    | Entity Types       | Key Senzing Fields |
|----------------------|----------------|--------------------|--------------------|
| icij.jsonl           | ICIJ           | Organizations      | PRIMARY_NAME_ORG, Jurisdiction, ICIJ_SOURCE, Status |
| open-ownership.jsonl | OPEN-OWNERSHIP | Persons, Orgs      | NAME_FULL/NAME_ORG, ADDR_*, NATIONALITY, REGISTRATION_NUMBER |
| open-sanctions.jsonl | OPEN-SANCTIONS | Persons, Orgs      | NAME_FULL/NAME_ORG, ADDR_*, DATE_OF_BIRTH, NATIONALITY, REGISTRATION_NUMBER |
| nominodata.jsonl     | NOMINODATA     | Persons            | PRIMARY_NAME_FIRST/LAST, ADDR_*, political_party, riskcode, Title |
| ofac.jsonl           | OFAC           | Persons, Orgs      | NAME_FULL/NAME_ORG, ADDR_*, DATE_OF_BIRTH, NATIONALITY, PASSPORT_NUMBER, SDN_PROGRAM |
| gleif.jsonl          | GLEIF          | Organizations      | NAME_ORG, ADDR_*, REGISTRATION_NUMBER, LEI_NUMBER |

## Raw equivalents

| CORD Source    | Raw Sample |
|----------------|------------|
| GLEIF          | [samples/raw/gleif-lei/](../../raw/gleif-lei/) |
| ICIJ           | [samples/raw/icij-offshore-leaks/](../../raw/icij-offshore-leaks/) |
| OFAC           | [samples/raw/ofac-sdn/](../../raw/ofac-sdn/) |
| OPEN-SANCTIONS | [samples/raw/opensanctions/](../../raw/opensanctions/) |
