# Sample Data

Small samples from data sources listed in [CATALOG.md](../CATALOG.md).
Use these to explore data shapes and build Senzing integrations without
downloading full datasets.

Two types of samples are provided:

- **CORD samples** (`cord/las-vegas/`, `cord/london/`, `cord/moscow/`) —
  Pre-mapped into Senzing JSONL format. Ready to load directly.
- **Raw samples** (`raw/`) — Original format (CSV, XML, JSON) as published
  by the source. Use these to practice building your own Senzing mappings.

> **Note:** CORD data is real (not synthetic) — historical snapshots for
> evaluation/testing only, not operational use.

## Las Vegas CORD (10 sources, US data)

| File                    | Source              | Records | Entity Types       |
|-------------------------|---------------------|---------|--------------------|
| equifax.jsonl           | EQUIFAX             | 10      | Organizations      |
| npi-providers.jsonl     | NPI-PROVIDERS       | 10      | Persons            |
| profound.jsonl          | PROFOUND            | 10      | Organizations      |
| enformion.jsonl         | ENFORMION           | 10      | Persons, Orgs      |
| nomino-risk.jsonl       | NOMINO-RISK         | 10      | Persons            |
| ppp-loans.jsonl         | PPP_LOANS           | 10      | Organizations      |
| open-ownership.jsonl    | OPEN-OWNERSHIP      | 10      | Persons, Orgs      |
| gleif.jsonl             | GLEIF               | 10      | Organizations      |
| us-labor-violations.jsonl | US-LABOR-VIOLATIONS | 10    | Organizations      |
| icij.jsonl              | ICIJ                | 10      | Persons, Orgs      |

## London CORD (5 sources, international data)

| File                | Source          | Records | Entity Types       |
|---------------------|-----------------|---------|-------------------|
| gleif.jsonl         | GLEIF           | 10      | Organizations      |
| globaldata.jsonl    | GLOBALDATA      | 10      | Organizations      |
| icij.jsonl          | ICIJ            | 10      | Persons, Orgs      |
| ofac.jsonl          | OFAC            | 10      | Persons, Orgs      |
| open-sanctions.jsonl | OPEN-SANCTIONS | 10      | Persons, Orgs      |

## Moscow CORD (6 sources, Cyrillic/non-roman script data)

| File                 | Source          | Records | Entity Types       |
|----------------------|-----------------|---------|-------------------|
| gleif.jsonl          | GLEIF           | 10      | Organizations      |
| icij.jsonl           | ICIJ            | 10      | Persons, Orgs      |
| nominodata.jsonl     | NOMINODATA      | 10      | Persons            |
| ofac.jsonl           | OFAC            | 10      | Persons, Orgs      |
| open-ownership.jsonl | OPEN-OWNERSHIP  | 10      | Persons, Orgs      |
| open-sanctions.jsonl | OPEN-SANCTIONS  | 10      | Persons, Orgs      |

## Usage

Each file is one JSON object per line (JSONL), ready to load into Senzing:

```bash
# Load a single sample
cat samples/cord/las-vegas/equifax.jsonl | your-senzing-loader

# Load all Las Vegas samples
cat samples/cord/las-vegas/*.jsonl | your-senzing-loader

# Load all CORD samples
cat samples/cord/**/*.jsonl | your-senzing-loader
```

---

## Raw Samples

10-record samples in their original published format. These are **not**
mapped to Senzing format — use them to practice building your own
transformations.

### Sanctions and Watchlists

| Directory             | File(s)                         | Format | Source                     |
|-----------------------|---------------------------------|--------|----------------------------|
| `ofac-sdn/`          | sdn-sample.csv, sdn-sample.xml | CSV, XML | US Treasury OFAC SDN List |
| `ofac-consolidated/`  | consolidated-sample.csv        | CSV    | OFAC Consolidated List     |
| `un-sanctions/`       | consolidated-sample.xml        | XML    | UN Security Council        |
| `opensanctions/`      | opensanctions-sample.csv       | CSV    | OpenSanctions (all lists)  |

### Government Exclusions

| Directory         | File(s)           | Format | Source          |
|-------------------|-------------------|--------|-----------------|
| `hhs-oig-leie/`  | leie-sample.csv   | CSV    | HHS OIG LEIE    |

### Corporate and Business Registries

| Directory            | File(s)                     | Format | Source                  |
|----------------------|-----------------------------|--------|-------------------------|
| `gleif-lei/`         | gleif-lei-sample.csv        | CSV    | GLEIF Global LEI        |
| `sec-edgar/`         | company-tickers-sample.json | JSON   | SEC EDGAR               |
| `uk-companies-house/`| companies-sample.csv        | CSV    | UK Companies House      |
| `irs-990/`           | pub78-sample.txt            | TXT    | IRS Publication 78      |
| `sba-ppp/`           | ppp-loans-sample.csv        | CSV    | SBA PPP Loan Data       |
| `usaspending/`       | awards-sample.json          | JSON   | USASpending.gov API     |

### Political Figures (PEPs)

| Directory           | File(s)          | Format | Source             |
|---------------------|------------------|--------|--------------------|
| `opensanctions-pep/`| pep-sample.csv   | CSV    | OpenSanctions PEPs |

### Investigative / Adverse Media

| Directory              | File(s)                                                                                    | Format | Source               |
|------------------------|--------------------------------------------------------------------------------------------|--------|----------------------|
| `icij-offshore-leaks/` | nodes-entities-sample.csv, nodes-officers-sample.csv, nodes-addresses-sample.csv, relationships-sample.csv | CSV | ICIJ Offshore Leaks |

### Healthcare

| Directory        | File(s)          | Format | Source           |
|------------------|------------------|--------|------------------|
| `npi-registry/`  | npi-sample.csv   | CSV    | CMS NPI Registry |

### Campaign Finance

| Directory            | File(s)                                      | Format | Source |
|----------------------|----------------------------------------------|--------|--------|
| `fec-contributions/` | candidates-sample.txt, committees-sample.txt | TXT    | FEC    |

### Lobbying

| Directory | File(s)                 | Format | Source                |
|-----------|-------------------------|--------|-----------------------|
| `fara/`   | registrants-sample.csv  | CSV    | DOJ FARA Registrants  |

### Education

| Directory            | File(s)                  | Format | Source            |
|----------------------|--------------------------|--------|-------------------|
| `college-scorecard/` | scorecard-sample.json    | JSON   | College Scorecard API |

### Law Enforcement

| Directory     | File(s)                  | Format | Source         |
|---------------|--------------------------|--------|----------------|
| `fbi-wanted/` | fbi-wanted-sample.json   | JSON   | FBI Wanted API |

### Sources not included (blocked or require accounts)

The following sources from the catalog could not be sampled automatically:

| Source                | Reason                                           |
|-----------------------|--------------------------------------------------|
| EU Sanctions          | API returns 403 Forbidden to automated requests  |
| BIS Denied Persons    | Site blocks automated downloads                  |
| BIS Entity List       | Site blocks automated downloads                  |
| CMS Open Payments     | API requires specific dataset identifiers        |
| USPTO Patent Data     | Files are very large XML; no small-file endpoint |
| SAM.gov Entities      | Requires free SAM.gov account registration       |
| SAM.gov Exclusions    | Requires free SAM.gov account registration       |
| NC/OH Voter Files     | Multi-GB downloads; no streaming endpoint        |
| NCES/IPEDS            | No direct bulk CSV download URL                  |

See [CATALOG.md](../CATALOG.md) for instructions on obtaining these datasets.

---

## Full datasets

To download the complete CORD datasets, see the download URLs in
[CATALOG.md](../CATALOG.md#pre-mapped-senzing-data-cord).

For full raw datasets, see the download URLs in each section of
[CATALOG.md](../CATALOG.md).
