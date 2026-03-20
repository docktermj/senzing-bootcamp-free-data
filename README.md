# senzing-bootcamp-free-data

A collection of free, publicly available data sources for use with the
[Senzing](https://senzing.com) entity resolution bootcamp.

This repository provides:

- A **catalog** of 30+ free data sources with download URLs, field details,
  and licensing ([CATALOG.md](CATALOG.md))
- **Raw samples** (10 records each) from 18 sources in their original
  format — CSV, XML, JSON — for practicing Senzing data mapping
- **CORD samples** (pre-mapped Senzing JSONL) from 21 sources across
  3 regional datasets, ready to load directly
- A **template** for building download-and-transform pipelines for new sources

## Repository structure

```text
.
├── CATALOG.md                # Full catalog of 30+ free data sources
├── CONTRIBUTING.md           # Guide for adding new data sources
├── Makefile                  # Common operations
├── samples/
│   ├── README.md             # Index of all samples + raw-to-CORD cross-reference
│   ├── cord/                 # Pre-mapped Senzing JSONL (ready to load)
│   │   ├── las-vegas/        # US data (10 sources, 100 records)
│   │   ├── london/           # International data (5 sources, 50 records)
│   │   └── moscow/           # Cyrillic/non-roman script (6 sources, 60 records)
│   └── raw/                  # Original format (CSV, XML, JSON) for 18 sources
│       └── <source-name>/    # e.g. ofac-sdn, hhs-oig-leie
│           ├── README.md     # Schema, download URL, license, entity types
│           └── *.csv|xml|json  # Sample data in original format
├── datasources/
│   └── .template/            # Template for new data source integrations
│       ├── README.md
│       ├── download.sh
│       └── transform.py
├── LICENSE                   # Apache 2.0
└── README.md                 # This file
```

## Quick start

Browse the data:

```bash
# See what sources are available
cat CATALOG.md

# Look at a raw sample's schema
cat samples/raw/ofac-sdn/README.md

# Look at the raw data
head samples/raw/ofac-sdn/sdn-sample.csv

# Compare with the pre-mapped Senzing JSONL
head -1 samples/cord/london/ofac.jsonl | python3 -m json.tool
```

Validate the samples:

```bash
make validate-samples
```

## Adding a new data source

See [CONTRIBUTING.md](CONTRIBUTING.md) for the full guide. In short:

1. Add an entry to [CATALOG.md](CATALOG.md)
2. Create a raw sample under `samples/raw/<source-name>/` with a `README.md`
3. Optionally build a full pipeline under `datasources/<source-name>/`

## Prerequisites

- Python 3.10+
- `curl`
- `make`

## License

This repository is licensed under the [Apache License 2.0](LICENSE).
Individual data sources retain their original licenses as noted in each
source's README.
