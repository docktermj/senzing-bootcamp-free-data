# Contributing

## Adding a new data source

### 1. Add a catalog entry

Add an entry to [CATALOG.md](CATALOG.md) under the appropriate category with:

- Entity types (persons, organizations, or both)
- Source organization
- Download URL
- Format (CSV, XML, JSON, etc.)
- Approximate record count
- License / terms of use
- Key fields relevant to entity resolution
- Update frequency

### 2. Add a raw sample

Create a directory under `samples/raw/<source-name>/`:

```bash
mkdir -p samples/raw/<source-name>
```

Download ~10 records in the source's original format:

```bash
curl -sL "<download-url>" | head -11 > samples/raw/<source-name>/sample.csv
```

Add a `README.md` documenting the schema. Use an existing sample README as
a template (e.g., `samples/raw/hhs-oig-leie/README.md`). Each README should
include:

- Source name and organization
- Full download URL
- Link to the CATALOG.md entry
- CORD cross-reference (if a pre-mapped equivalent exists)
- Column/field descriptions with a table
- License
- Entity types

### 3. (Optional) Add a full data source integration

Copy the template:

```bash
cp -r datasources/.template datasources/<source-name>
```

Implement:

- `download.sh` — Idempotent download script. Use `curl -z` to avoid
  re-downloading unchanged files.
- `transform.py` — Converts raw data to Senzing JSONL format. Each output
  record must include `DATA_SOURCE` and `RECORD_ID` fields.

### 4. Update the catalog

Add a `**Sample:**` link in your CATALOG.md entry pointing to the sample
README:

```markdown
- **Sample:** [samples/raw/<source-name>/README.md](samples/raw/<source-name>/README.md)
```

## Naming conventions

- Directory names: lowercase kebab-case (e.g., `ofac-sdn`, `hhs-oig-leie`)
- Sample files: descriptive name with format suffix (e.g., `sdn-sample.csv`)

## Data requirements

- Only include freely available, publicly downloadable data sources
- Note the license in both the CATALOG.md entry and the sample README
- Never commit large data files — raw and mapped data directories are
  git-ignored
- Sample files should be small (10 records) to keep the repo lightweight

## Validating your changes

```bash
# Verify CORD samples are valid JSON
make validate-samples

# Check that sample README links in CATALOG.md point to real files
grep 'Sample:.*samples/raw' CATALOG.md | grep -oP '\(samples/raw/[^)]+\)' | \
  tr -d '()' | while read f; do [ -f "$f" ] && echo "OK: $f" || echo "MISSING: $f"; done
```
