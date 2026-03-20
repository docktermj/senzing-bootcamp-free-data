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

## [Las Vegas CORD](cord/las-vegas/README.md) (10 sources, US data)

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

## [London CORD](cord/london/README.md) (5 sources, international data)

| File                | Source          | Records | Entity Types       |
|---------------------|-----------------|---------|-------------------|
| gleif.jsonl         | GLEIF           | 10      | Organizations      |
| globaldata.jsonl    | GLOBALDATA      | 10      | Organizations      |
| icij.jsonl          | ICIJ            | 10      | Persons, Orgs      |
| ofac.jsonl          | OFAC            | 10      | Persons, Orgs      |
| open-sanctions.jsonl | OPEN-SANCTIONS | 10      | Persons, Orgs      |

## [Moscow CORD](cord/moscow/README.md) (6 sources, Cyrillic/non-roman script data)

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

## Raw-to-CORD Cross-Reference

Several data sources appear in both raw and CORD forms. Compare these
side-by-side to see how raw data maps to Senzing JSONL:

| Raw Sample | CORD Equivalent(s) | Notes |
|------------|---------------------|-------|
| `raw/ofac-sdn/` | `cord/london/ofac.jsonl`, `cord/moscow/ofac.jsonl` | CORD combines SDN + consolidated |
| `raw/gleif-lei/` | `cord/las-vegas/gleif.jsonl`, `cord/london/gleif.jsonl`, `cord/moscow/gleif.jsonl` | Regional subsets of GLEIF |
| `raw/icij-offshore-leaks/` | `cord/las-vegas/icij.jsonl`, `cord/london/icij.jsonl`, `cord/moscow/icij.jsonl` | CORD flattens the graph CSVs |
| `raw/npi-registry/` | `cord/las-vegas/npi-providers.jsonl` | Las Vegas area providers |
| `raw/sba-ppp/` | `cord/las-vegas/ppp-loans.jsonl` | Las Vegas area loans |
| `raw/opensanctions/` | `cord/london/open-sanctions.jsonl`, `cord/moscow/open-sanctions.jsonl` | Regional subsets |

Sources in CORD without a raw sample: EQUIFAX, ENFORMION, PROFOUND,
GLOBALDATA, NOMINO-RISK/NOMINODATA, US-LABOR-VIOLATIONS, OPEN-OWNERSHIP
(these are commercial or not freely downloadable).

---

## Raw Samples

10-record samples in their original published format. These are **not**
mapped to Senzing format — use them to practice building your own
transformations.

### Sanctions and Watchlists

| Directory             | File(s)                         | Format | Source                     |
|-----------------------|---------------------------------|--------|----------------------------|
| [`ofac-sdn/`](raw/ofac-sdn/README.md) | sdn-sample.csv, sdn-sample.xml | CSV, XML | US Treasury OFAC SDN List |
| [`ofac-consolidated/`](raw/ofac-consolidated/README.md) | consolidated-sample.csv | CSV | OFAC Consolidated List |
| [`un-sanctions/`](raw/un-sanctions/README.md) | consolidated-sample.xml | XML | UN Security Council |
| [`opensanctions/`](raw/opensanctions/README.md) | opensanctions-sample.csv | CSV | OpenSanctions (all lists) |

### Government Exclusions

| Directory         | File(s)           | Format | Source          |
|-------------------|-------------------|--------|-----------------|
| [`hhs-oig-leie/`](raw/hhs-oig-leie/README.md) | leie-sample.csv | CSV | HHS OIG LEIE |

### Corporate and Business Registries

| Directory            | File(s)                     | Format | Source                  |
|----------------------|-----------------------------|--------|-------------------------|
| [`gleif-lei/`](raw/gleif-lei/README.md) | gleif-lei-sample.csv | CSV | GLEIF Global LEI |
| [`sec-edgar/`](raw/sec-edgar/README.md) | company-tickers-sample.json | JSON | SEC EDGAR |
| [`uk-companies-house/`](raw/uk-companies-house/README.md) | companies-sample.csv | CSV | UK Companies House |
| [`irs-990/`](raw/irs-990/README.md) | pub78-sample.txt | TXT | IRS Publication 78 |
| [`sba-ppp/`](raw/sba-ppp/README.md) | ppp-loans-sample.csv | CSV | SBA PPP Loan Data |
| [`usaspending/`](raw/usaspending/README.md) | awards-sample.json | JSON | USASpending.gov API |

### Political Figures (PEPs)

| Directory           | File(s)          | Format | Source             |
|---------------------|------------------|--------|--------------------|
| [`opensanctions-pep/`](raw/opensanctions-pep/README.md) | pep-sample.csv | CSV | OpenSanctions PEPs |

### Investigative / Adverse Media

| Directory              | File(s)                                                                                    | Format | Source               |
|------------------------|--------------------------------------------------------------------------------------------|--------|----------------------|
| [`icij-offshore-leaks/`](raw/icij-offshore-leaks/README.md) | nodes-entities-sample.csv, nodes-officers-sample.csv, nodes-addresses-sample.csv, relationships-sample.csv | CSV | ICIJ Offshore Leaks |

### Healthcare

| Directory        | File(s)          | Format | Source           |
|------------------|------------------|--------|------------------|
| [`npi-registry/`](raw/npi-registry/README.md) | npi-sample.csv | CSV | CMS NPI Registry |

### Campaign Finance

| Directory            | File(s)                                      | Format | Source |
|----------------------|----------------------------------------------|--------|--------|
| [`fec-contributions/`](raw/fec-contributions/README.md) | candidates-sample.txt, committees-sample.txt | TXT | FEC |

### Lobbying

| Directory | File(s)                 | Format | Source                |
|-----------|-------------------------|--------|-----------------------|
| [`fara/`](raw/fara/README.md) | registrants-sample.csv | CSV | DOJ FARA Registrants |

### Education

| Directory            | File(s)                  | Format | Source            |
|----------------------|--------------------------|--------|-------------------|
| [`college-scorecard/`](raw/college-scorecard/README.md) | scorecard-sample.json | JSON | College Scorecard API |

### Law Enforcement

| Directory     | File(s)                  | Format | Source         |
|---------------|--------------------------|--------|----------------|
| [`fbi-wanted/`](raw/fbi-wanted/README.md) | fbi-wanted-sample.json | JSON | FBI Wanted API |

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
