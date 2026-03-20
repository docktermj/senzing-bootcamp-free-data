# senzing-bootcamp-free-data

A collection of free, publicly available data sources prepared for use with the
[Senzing](https://senzing.com) entity resolution bootcamp.

Each data source includes download scripts, Senzing-mapped JSON output, and
documentation describing the source, its license, and how it was mapped.

See [CATALOG.md](CATALOG.md) for a full list of candidate data sources with
download URLs, field details, and licensing information.

## Repository structure

```text
.
├── datasources/           # One subdirectory per data source
│   ├── .template/         # Template for adding a new data source
│   │   ├── README.md
│   │   ├── download.sh
│   │   └── transform.py
│   └── <source-name>/     # e.g. us-ofac-sdn, us-sam-exclusions
│       ├── README.md      # Description, URL, license, update frequency
│       ├── download.sh    # Downloads raw data into data/raw/
│       ├── transform.py   # Converts raw data to Senzing JSON format
│       ├── data/
│       │   ├── raw/       # Original downloaded files (git-ignored)
│       │   └── mapped/    # Senzing-format JSON lines (git-ignored)
│       └── mapping.json   # Senzing entity specification mapping reference
├── scripts/               # Shared utility scripts
├── Makefile               # Common operations (download-all, transform-all)
├── CLAUDE.md              # Claude Code conventions for this project
├── LICENSE                # Apache 2.0
└── README.md              # This file
```

## Prerequisites

- Python 3.10+
- `curl` or `wget`
- `make`

## Quick start

```bash
# Download and transform all data sources
make all

# Work with a single data source
make download SOURCE=us-ofac-sdn
make transform SOURCE=us-ofac-sdn
```

## Adding a new data source

1. Copy the template:

   ```bash
   cp -r datasources/.template datasources/<source-name>
   ```

2. Edit `datasources/<source-name>/README.md` with source details.
3. Implement `download.sh` to fetch the raw data.
4. Implement `transform.py` to produce Senzing-mapped JSON lines.
5. Add the source to this README's data source table below.

## Data sources

| Name          | Description | License | Records |
|---------------|-------------|---------|---------|
| *(none yet)*  |             |         |         |

## License

This repository is licensed under the [Apache License 2.0](LICENSE).
Individual data sources retain their original licenses as noted in each
source's README.
