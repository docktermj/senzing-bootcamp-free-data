# OFAC Specially Designated Nationals (SDN) List

- **Source:** US Treasury, Office of Foreign Assets Control
- **Full download:** `https://www.treasury.gov/ofac/downloads/sdn.csv`
- **Catalog entry:** [CATALOG.md — OFAC SDN](../../../CATALOG.md#ofac-specially-designated-nationals-sdn-list)
- **License:** US government public domain
- **CORD equivalent:** `cord/london/ofac.jsonl`, `cord/moscow/ofac.jsonl`

## Files

### sdn-sample.csv

Headerless CSV. Columns are positional (no header row):

| Position | Field             | Description                          |
|----------|-------------------|--------------------------------------|
| 1        | ent_num           | Unique entity number                 |
| 2        | SDN_Name          | Name (LastName, FirstName for people)|
| 3        | SDN_Type          | "individual", "Entity", "-0-"        |
| 4        | Program           | Sanctions program code               |
| 5        | Title             | Title or position                    |
| 6        | Call_Sign         | Vessel call sign                     |
| 7        | Vess_type         | Vessel type                          |
| 8        | Tonnage           | Vessel tonnage                       |
| 9        | GRT               | Gross registered tonnage             |
| 10       | Vess_flag         | Vessel flag                          |
| 11       | Vess_owner        | Vessel owner                         |
| 12       | Remarks           | Free text (DOB, POB, passport, etc.) |

`-0-` indicates an empty field.

### sdn-sample.xml

XML format with `<sdnEntry>` elements. Child elements:

| Element            | Description                                          |
|--------------------|------------------------------------------------------|
| uid                | Unique entity number                                 |
| lastName           | Last name (or full org name for entities)             |
| firstName          | First name (persons only)                            |
| title              | Title or position                                    |
| sdnType            | "Individual", "Entity", "Vessel", "Aircraft"         |
| remarks            | Free text (DOB, POB, passport, etc.)                 |
| programList        | Contains `<program>` elements (sanctions programs)   |
| akaList            | Contains `<aka>` elements with alias names           |
| addressList        | Contains `<address>` with city, country, etc.        |
| nationalityList    | Contains `<nationality>` with country                |
| dateOfBirthList    | Contains `<dateOfBirthItem>` with `<dateOfBirth>`    |
| placeOfBirthList   | Contains `<placeOfBirthItem>` with `<placeOfBirth>`  |
| idList             | Contains `<id>` with `<idType>`, `<idNumber>`, `<idCountry>` |
| vesselInfo         | Contains `<callSign>`, `<vesselType>`, `<tonnage>`, `<vesselFlag>`, `<vesselOwner>` |

## Entity types

Persons and organizations (plus vessels and aircraft).
