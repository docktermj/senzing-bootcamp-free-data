# UN Security Council Consolidated Sanctions List

- **Source:** United Nations Security Council
- **Full download:** `https://scsanctions.un.org/resources/xml/en/consolidated.xml`
- **Catalog entry:** [CATALOG.md — UN Sanctions](../../../CATALOG.md#un-security-council-consolidated-sanctions-list)

## Files

### consolidated-sample.xml

XML with two top-level sections: `<INDIVIDUALS>` and `<ENTITIES>`.

Key elements per `<INDIVIDUAL>`:

| Element            | Description                                |
|--------------------|--------------------------------------------|
| DATAID             | Unique identifier                          |
| FIRST_NAME         | First/given name                           |
| SECOND_NAME        | Family/surname                             |
| THIRD_NAME         | Additional name part                       |
| UN_LIST_TYPE       | Sanctions committee (e.g. DRC, ISIL, TAi)  |
| REFERENCE_NUMBER   | Committee reference (e.g. CDi.001)         |
| LISTED_ON          | Date listed (YYYY-MM-DD)                   |
| GENDER             | Male/Female                                |
| NATIONALITY        | Country of nationality                     |
| DESIGNATION        | Aliases in `<ALIAS>` sub-elements          |
| INDIVIDUAL_ADDRESS | Address sub-elements                       |
| INDIVIDUAL_DATE_OF_BIRTH | DOB sub-elements                      |
| INDIVIDUAL_DOCUMENT| Passport/ID sub-elements                   |
| COMMENTS1          | Free-text notes                            |

## Entity types

Persons and organizations designated by UN Security Council resolutions.
