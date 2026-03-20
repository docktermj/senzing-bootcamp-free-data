# CLAUDE.md

## What This Repository Is

A collection of free, publicly available data sources for the Senzing entity
resolution bootcamp. It includes a catalog of 30+ sources, raw sample data
in original formats, and pre-mapped Senzing JSONL samples from CORD datasets.

## Repository Layout

- `CATALOG.md` - Master catalog of all data sources with download URLs,
  field descriptions, licensing, and links to sample READMEs
- `samples/cord/` - Pre-mapped Senzing JSONL samples (ready to load)
  - `las-vegas/` - 10 US sources
  - `london/` - 5 international sources
  - `moscow/` - 6 Cyrillic/non-roman script sources
- `samples/raw/` - Raw samples in original format (CSV, XML, JSON)
  - Each subdirectory has a `README.md` with column/field schema
  - Use these to practice building Senzing mappings
- `samples/README.md` - Index of all samples with raw-to-CORD cross-reference
- `datasources/.template/` - Template for adding a new data source integration
  - `download.sh` - Downloads raw data into `data/raw/`
  - `transform.py` - Converts raw data to Senzing JSON lines in `data/mapped/`
- `Makefile` - Common operations

## Key Files to Read First

When helping a user with this repo, start with:

1. `CATALOG.md` - To understand what data sources are available
2. `samples/README.md` - To find sample data and the raw-to-CORD cross-reference
3. The `README.md` inside the relevant `samples/raw/<source>/` directory -
   To understand the schema of a specific data source

## Conventions

- **Data source naming**: Use lowercase kebab-case matching the source
  (e.g. `us-ofac-sdn`, `us-sam-exclusions`).
- **Senzing mapping**: Always use the Senzing MCP `mapping_workflow` tool to
  generate mappings. Do not hand-code Senzing JSON attribute names.
- **Transform output**: One JSON object per line (JSONL). Each record must
  include `DATA_SOURCE` and `RECORD_ID` fields.
- **Download scripts**: Must be idempotent. Use `curl -z` or check timestamps
  to avoid re-downloading unchanged files.
- **Python**: Use Python 3.10+. No third-party dependencies unless necessary;
  prefer stdlib (`csv`, `json`, `urllib`).
- **Large files**: Never commit raw or mapped data files. They are git-ignored.

## Senzing MCP Server

For any Senzing-related work (mapping, SDK usage, configuration), always use
the Senzing MCP server tools first:
- `mapping_workflow` for data mapping
- `lint_record` / `analyze_record` to validate mapped records
- `search_docs` for documentation questions
- `generate_scaffold` / `sdk_guide` for SDK code
