# OFAC Consolidated Sanctions List

- **Source:** US Treasury, Office of Foreign Assets Control
- **Full download:** `https://sanctionslistservice.ofac.treas.gov/api/publicationpreview/exports/CONS_PRIM.CSV`
- **Catalog entry:** [CATALOG.md — OFAC Consolidated](../../../CATALOG.md#ofac-consolidated-sanctions-list)

## Files

### consolidated-sample.csv

Headerless CSV. Columns are positional (same layout as the SDN CSV):

| Position | Field    | Description                          |
|----------|----------|--------------------------------------|
| 1        | ent_num  | Unique entity number                 |
| 2        | Name     | Name (LastName, FirstName for people)|
| 3        | Type     | "individual" or "Entity"             |
| 4        | Program  | Sanctions program code (e.g. NS-PLC) |
| 5–11     | (vessel) | Vessel-related fields (usually -0-)  |
| 12       | Remarks  | Free text (DOB, POB, IDs, etc.)      |

`-0-` indicates an empty field.

## Entity types

Persons and organizations across all OFAC programs (SDN + non-SDN lists).
