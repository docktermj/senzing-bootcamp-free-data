# CLAUDE.md

## What This Repository Is

A collection of free, publicly available data sources mapped into Senzing JSON
format for the Senzing entity resolution bootcamp.

## Repository Layout

- `datasources/<source-name>/` - One directory per data source
  - `README.md` - Source description, URL, license, update frequency
  - `download.sh` - Downloads raw data into `data/raw/`
  - `transform.py` - Converts raw data to Senzing JSON lines in `data/mapped/`
  - `mapping.json` - Senzing entity specification mapping reference
  - `data/raw/` - Original downloaded files (git-ignored)
  - `data/mapped/` - Senzing-format JSONL output (git-ignored)
- `scripts/` - Shared utilities
- `Makefile` - Common operations

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
