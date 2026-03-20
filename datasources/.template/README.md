# <Source Name>

- **Entity types:** Persons / Organizations / Both
- **Source:** <Organization name>
- **Full download:** `https://example.com/data`
- **Format:** CSV / JSON / XML
- **Records:** ~N
- **License:** US government public domain / CC0 / CC BY / Other
- **Key fields:** Name, address, DOB, ...
- **Update frequency:** Daily / Weekly / Monthly / Static
- **Catalog entry:** [CATALOG.md — Source Name](../../CATALOG.md#source-name)
- **Sample:** [samples/raw/<source-name>/README.md](../../samples/raw/<source-name>/README.md)

## Fields mapped

| Source Field | Senzing Attribute | Notes |
|--------------|-------------------|-------|
|              |                   |       |

## Usage

```bash
# Download raw data
./download.sh

# Transform to Senzing JSON
python3 transform.py
```

## Entity types

Describe what types of entities this source contains (persons, organizations,
or both) and any relevant notes about the data.
