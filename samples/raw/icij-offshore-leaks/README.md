# ICIJ Offshore Leaks Database

- **Source:** International Consortium of Investigative Journalists
- **Full download:** `https://offshoreleaks-data.icij.org/offshoreleaks/csv/full-oldb.LATEST.zip`
- **License:** CC BY-SA
- **Catalog entry:** [CATALOG.md — ICIJ Offshore Leaks](../../../CATALOG.md#icij-offshore-leaks-database)
- **CORD equivalent:** `cord/las-vegas/icij.jsonl`, `cord/london/icij.jsonl`, `cord/moscow/icij.jsonl`

## Files

Four CSV files representing a graph of entities and relationships:

### nodes-entities-sample.csv

Offshore companies and legal entities.

| Column                   | Description                                |
|--------------------------|--------------------------------------------|
| node_id                  | Unique node identifier                     |
| name                     | Entity name                                |
| original_name            | Name as it appeared in source documents    |
| former_name              | Previous name                              |
| jurisdiction             | Jurisdiction code (e.g. SAM, BVI, PMA)     |
| jurisdiction_description | Full jurisdiction name                     |
| company_type             | Entity type                                |
| address                  | Registered agent/address                   |
| incorporation_date       | Date incorporated                          |
| inactivation_date        | Date inactivated                           |
| struck_off_date          | Date struck off registry                   |
| status                   | Current status                             |
| service_provider         | Registered agent firm                      |
| country_codes            | ISO country codes                          |
| countries                | Country names                              |
| sourceID                 | Leak source (Panama Papers, Pandora, etc.) |

### nodes-officers-sample.csv

People and organizations connected to offshore entities.

| Column        | Description                                     |
|---------------|-------------------------------------------------|
| node_id       | Unique node identifier                          |
| name          | Officer/intermediary name                       |
| countries     | Country names                                   |
| country_codes | ISO country codes                               |
| sourceID      | Leak source                                     |

### nodes-addresses-sample.csv

Addresses associated with entities and officers.

| Column        | Description              |
|---------------|--------------------------|
| node_id       | Unique node identifier   |
| address       | Full address text        |
| country_codes | ISO country codes        |
| countries     | Country names            |
| sourceID      | Leak source              |

### relationships-sample.csv

Edges connecting nodes (officer→entity, entity→address, etc.).

| Column   | Description                                                |
|----------|------------------------------------------------------------|
| node_id_start | Source node ID                                        |
| node_id_end   | Target node ID                                        |
| rel_type      | Relationship type (e.g. officer_of, registered_address)|
| sourceID      | Leak source                                           |

## Entity types

Persons (officers/directors) and organizations (offshore companies).
The graph structure is central — relationships between nodes are as
important as the nodes themselves for entity resolution.
