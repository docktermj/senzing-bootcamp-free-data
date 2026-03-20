# UN Security Council Consolidated Sanctions List

- **Source:** United Nations Security Council
- **Full download:** `https://scsanctions.un.org/resources/xml/en/consolidated.xml`
- **Catalog entry:** [CATALOG.md — UN Sanctions](../../../CATALOG.md#un-security-council-consolidated-sanctions-list)

## Files

### consolidated-sample.xml

XML with two top-level sections: `<INDIVIDUALS>` and `<ENTITIES>`.

Key elements per `<INDIVIDUAL>`:

| Element                  | Description                                    |
|--------------------------|------------------------------------------------|
| DATAID                   | Unique identifier                              |
| VERSIONNUM               | Record version number                          |
| FIRST_NAME               | First/given name                               |
| SECOND_NAME              | Family/surname                                 |
| THIRD_NAME               | Additional name part                           |
| FOURTH_NAME              | Additional name part                           |
| UN_LIST_TYPE             | Sanctions committee (e.g. DRC, ISIL, TAi)      |
| REFERENCE_NUMBER         | Committee reference (e.g. CDi.001)             |
| LISTED_ON                | Date listed (YYYY-MM-DD)                       |
| GENDER                   | Male/Female                                    |
| NATIONALITY              | `<VALUE>` sub-element with country name        |
| LIST_TYPE                | List type sub-element                          |
| LAST_DAY_UPDATED         | Date/day of last update                        |
| INDIVIDUAL_ALIAS         | Aliases; contains `<ALIAS_NAME>`, `<QUALITY>`  |
| INDIVIDUAL_ADDRESS       | Address; contains `<STREET>`, `<CITY>`, `<STATE_PROVINCE>`, `<COUNTRY>` |
| INDIVIDUAL_DATE_OF_BIRTH | DOB; contains `<DATE>`, `<FROM_YEAR>`          |
| INDIVIDUAL_PLACE_OF_BIRTH| Place of birth sub-elements                    |
| INDIVIDUAL_DOCUMENT      | IDs; contains `<NUMBER>`, `<ISSUING_COUNTRY>`, `<DATE_OF_ISSUE>` |
| COMMENTS1                | Free-text notes                                |

## Entity types

Persons and organizations designated by UN Security Council resolutions.
