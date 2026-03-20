# Free Data Source Catalog

A curated list of free, publicly available data sources suitable for entity
resolution with Senzing. Organized by category with download details for each.

> **Note:** URLs were verified as of March 2026. Government sites occasionally
> restructure paths — confirm download URLs before building pipelines.

---

## Sanctions and Watchlists

### OFAC Specially Designated Nationals (SDN) List

- **Entity types:** Persons, organizations, vessels, aircraft
- **Source:** US Treasury / OFAC
- **Download:**
  - XML: `https://www.treasury.gov/ofac/downloads/sdn.xml`
  - CSV: `https://www.treasury.gov/ofac/downloads/sdn.csv`
  - Advanced XML: `https://www.treasury.gov/ofac/downloads/sanctions/1.0/sdn_advanced.xml`
- **Format:** XML, CSV, TXT
- **Records:** ~12,000–15,000 (7,000–8,000 persons)
- **License:** US government public domain
- **Key fields:** Name, aliases, DOB, place of birth, nationality, passport/ID numbers, addresses
- **Update frequency:** Business days
- **Sample:** [samples/raw/ofac-sdn/README.md](samples/raw/ofac-sdn/README.md)

### OFAC Consolidated Sanctions List

- **Entity types:** Persons, organizations
- **Source:** US Treasury / OFAC
- **Download:**
  - XML: `https://www.treasury.gov/ofac/downloads/consolidated/consolidated.xml`
  - CSV: `https://www.treasury.gov/ofac/downloads/consolidated/consolidated.csv`
- **Format:** XML, CSV
- **Records:** ~40,000–50,000
- **License:** US government public domain
- **Key fields:** Name, aliases, DOB, addresses, ID numbers, program codes
- **Update frequency:** Business days
- **Sample:** [samples/raw/ofac-consolidated/README.md](samples/raw/ofac-consolidated/README.md)

### UN Security Council Consolidated Sanctions List

- **Entity types:** Persons, organizations
- **Source:** United Nations Security Council
- **Download:**
  - XML: `https://scsanctions.un.org/resources/xml/en/consolidated.xml`
- **Format:** XML, CSV
- **Records:** ~1,000 (700–800 individuals + 300 entities)
- **License:** UN public data
- **Key fields:** Name, aliases, DOB, place of birth, nationality, passport numbers, addresses
- **Update frequency:** Per UNSC resolution
- **Sample:** [samples/raw/un-sanctions/README.md](samples/raw/un-sanctions/README.md)

### EU Consolidated Sanctions List

- **Entity types:** Persons, organizations
- **Source:** European External Action Service
- **Download:**
  - XML: `https://webgate.ec.europa.eu/fsd/fsf/public/files/xmlFullSanctionsList_1_1/content`
- **Format:** XML, CSV
- **Records:** ~2,500–3,500
- **License:** EU open data
- **Key fields:** Name, aliases, DOB, place of birth, nationality, passport/ID numbers
- **Update frequency:** Continuous (per EU regulation)

### BIS Denied Persons List

- **Entity types:** Persons, organizations
- **Source:** Bureau of Industry and Security, US Dept. of Commerce
- **Download:** `https://www.bis.doc.gov/dpl/thedeniedpersonslist.txt`
- **Format:** Fixed-width TXT, CSV
- **Records:** ~1,500–2,000
- **License:** US government public domain
- **Key fields:** Name, address, effective/expiration dates
- **Update frequency:** Several times per month

### BIS Entity List

- **Entity types:** Primarily organizations, some persons
- **Source:** Bureau of Industry and Security
- **Download:** `https://www.bis.doc.gov/index.php/policy-guidance/lists-of-parties-of-concern/entity-list`
- **Format:** CSV, Excel
- **Records:** ~2,500–3,500
- **License:** US government public domain
- **Key fields:** Name, address, country, license requirement
- **Update frequency:** Monthly

### OpenSanctions Consolidated Dataset

- **Entity types:** Persons, organizations
- **Source:** OpenSanctions (aggregates 100+ source lists)
- **Download:**
  - CSV: `https://data.opensanctions.org/datasets/latest/default/targets.simple.csv`
  - JSON: `https://data.opensanctions.org/datasets/latest/default/targets.nested.json`
- **Format:** CSV, JSON
- **Records:** ~500,000+
- **License:** CC BY (free for non-commercial use)
- **Key fields:** Name, aliases, DOB, nationality, positions, source citations
- **Update frequency:** Daily
- **Sample:** [samples/raw/opensanctions/README.md](samples/raw/opensanctions/README.md)

---

## Government Exclusion Lists

### HHS OIG List of Excluded Individuals/Entities (LEIE)

- **Entity types:** Persons, organizations
- **Source:** US Dept. of Health and Human Services, Office of Inspector General
- **Download:** `https://oig.hhs.gov/exclusions/exclusions_list.asp`
- **Format:** CSV (in ZIP)
- **Records:** ~76,000–80,000 (45,000–50,000 active)
- **License:** US government public domain
- **Key fields:** Name, DOB, address, NPI, exclusion type/date, specialty
- **Update frequency:** Monthly (1st business day)
- **Sample:** [samples/raw/hhs-oig-leie/README.md](samples/raw/hhs-oig-leie/README.md)

### SAM.gov Exclusions

- **Entity types:** Persons, organizations
- **Source:** General Services Administration
- **Download:** `https://sam.gov/data-services` (public CSV extract; free account for full extract)
- **Format:** CSV (in ZIP)
- **Records:** ~600,000–700,000 (cumulative)
- **License:** US government public domain
- **Key fields:** Name, address, UEI/DUNS, CAGE code, exclusion type, agency
- **Update frequency:** Daily

---

## Corporate and Business Registries

### GLEIF Global LEI Data

- **Entity types:** Organizations
- **Source:** Global Legal Entity Identifier Foundation
- **Download:** `https://www.gleif.org/en/lei-data/gleif-concatenated-file/download-the-concatenated-file`
- **Format:** CSV, XML
- **Records:** ~2.5 million
- **License:** CC0 (public domain)
- **Key fields:** LEI, legal name, legal address, HQ address, entity category, status, registration authority/number, parent/child relationships
- **Update frequency:** Daily deltas, monthly full snapshots
- **Sample:** [samples/raw/gleif-lei/README.md](samples/raw/gleif-lei/README.md)

### SEC EDGAR Company Data

- **Entity types:** Organizations
- **Source:** US Securities and Exchange Commission
- **Download:**
  - Company tickers: `https://www.sec.gov/files/company_tickers.json`
  - Submissions: `https://data.sec.gov/submissions/`
  - Full index: `https://www.sec.gov/Archives/edgar/full-index/`
- **Format:** JSON, CSV, tab-delimited
- **Records:** ~500,000+
- **License:** US government public domain
- **Key fields:** Company name, CIK, SIC code, state of incorporation, addresses, former names
- **Update frequency:** Daily
- **Sample:** [samples/raw/sec-edgar/README.md](samples/raw/sec-edgar/README.md)

### UK Companies House

- **Entity types:** Organizations
- **Source:** UK Companies House
- **Download:** `https://download.companieshouse.gov.uk/en_output.html`
- **Format:** CSV (multiple files, ~700MB each)
- **Records:** ~5.5 million
- **License:** Open Government Licence v3.0
- **Key fields:** Company number, name, registered address, category, status, SIC codes, previous names
- **Update frequency:** Monthly
- **Sample:** [samples/raw/uk-companies-house/README.md](samples/raw/uk-companies-house/README.md)

### IRS Tax-Exempt Organizations (Form 990)

- **Entity types:** Organizations (with officer/director persons in XML)
- **Source:** US Internal Revenue Service
- **Download:**
  - CSV: `https://www.irs.gov/charities-non-profits/tax-exempt-organization-search-bulk-data-downloads`
  - 990 XML: `s3://irs-form-990/` (public S3, `--no-sign-request`)
- **Format:** CSV, XML
- **Records:** ~1.9 million orgs; ~3 million 990 filings
- **License:** US government public domain
- **Key fields:** EIN, org name, city, state, deductibility status; XML includes officers, compensation, board members
- **Update frequency:** CSV monthly; XML quarterly batches
- **Sample:** [samples/raw/irs-990/README.md](samples/raw/irs-990/README.md)

### SAM.gov Entity Management (Federal Contractors)

- **Entity types:** Organizations
- **Source:** General Services Administration
- **Download:** `https://sam.gov/data-services` (free account required)
- **Format:** CSV, JSON (in ZIP)
- **Records:** ~750,000+
- **License:** US government public domain
- **Key fields:** UEI, CAGE code, legal name, DBA name, addresses, NAICS codes, business types, POC names/emails
- **Update frequency:** Daily deltas, monthly full extracts

### SBA PPP Loan Data

- **Entity types:** Organizations (small businesses)
- **Source:** US Small Business Administration
- **Download:** `https://data.sba.gov/dataset/ppp-foia`
- **Format:** CSV
- **Records:** ~12 million loans (~11 million unique businesses)
- **License:** US government public domain (FOIA release)
- **Key fields:** Business name, address, business type, NAICS code, loan amount, lender name
- **Update frequency:** Static (program ended May 2021)
- **Sample:** [samples/raw/sba-ppp/README.md](samples/raw/sba-ppp/README.md)

### USASpending.gov Award Recipients

- **Entity types:** Organizations
- **Source:** US Treasury / USASpending.gov
- **Download:** `https://www.usaspending.gov/download_center/award_data_archive`
- **Format:** CSV (in ZIP)
- **Records:** ~500,000+ unique recipients
- **License:** US government public domain
- **Key fields:** Recipient name, UEI, address, business types, award amount, parent recipient
- **Update frequency:** Twice weekly
- **Sample:** [samples/raw/usaspending/README.md](samples/raw/usaspending/README.md)

### Australia ASIC Company Register

- **Entity types:** Organizations
- **Source:** Australian Securities and Investments Commission
- **Download:** `https://data.gov.au/dataset/ds-dga-bc22d7e0-c0e5-4f76-b60d-0f1b36d4b1d2/`
- **Format:** CSV
- **Records:** ~3 million
- **License:** CC BY 3.0 Australia
- **Key fields:** ACN, company name, type, status, locality, state, registration date
- **Update frequency:** Monthly

### Corporations Canada

- **Entity types:** Organizations
- **Source:** Innovation, Science and Economic Development Canada
- **Download:** `https://open.canada.ca/data/en/dataset/` (search for Corporations Canada)
- **Format:** CSV
- **Records:** ~500,000 federal corporations
- **License:** Open Government Licence — Canada
- **Key fields:** Corporation name/number, status, type, jurisdiction, incorporation date, registered office
- **Update frequency:** Monthly

### US State Corporate Registries (Selected)

| State      | Portal                                         | Format | Records |
|------------|-------------------------------------------------|--------|---------|
| New York   | `https://data.ny.gov` (Active Corporations)     | CSV    | ~2M     |
| California | `https://bizfileonline.sos.ca.gov/`              | CSV    | ~5M     |
| Florida    | `https://dos.myflorida.com/sunbiz/`              | Bulk   | ~3M     |
| Colorado   | `https://www.sos.state.co.us/biz/`               | CSV    | Varies  |

---

## Political Figures (PEPs)

### Wikidata Politicians

- **Entity types:** Persons
- **Source:** Wikidata / EveryPolitician project
- **Download:** SPARQL endpoint at `https://query.wikidata.org/`
- **Format:** JSON, CSV, TSV (via SPARQL export)
- **Records:** ~150,000–250,000 politicians globally
- **License:** CC0 (public domain)
- **Key fields:** Name, aliases (multilingual), DOB, country, positions held, external IDs
- **Update frequency:** Continuous (weekly bulk dumps)

### OpenSanctions PEP Dataset

- **Entity types:** Persons
- **Source:** OpenSanctions
- **Download:**
  - CSV: `https://data.opensanctions.org/datasets/latest/peps/targets.simple.csv`
  - JSON: `https://data.opensanctions.org/datasets/latest/peps/targets.nested.json`
- **Format:** CSV, JSON
- **Records:** ~300,000–400,000
- **License:** CC BY (free for non-commercial use)
- **Key fields:** Name, aliases, DOB, nationality, positions, country
- **Update frequency:** Daily
- **Sample:** [samples/raw/opensanctions-pep/README.md](samples/raw/opensanctions-pep/README.md)

---

## Investigative / Adverse Media

### ICIJ Offshore Leaks Database

- **Entity types:** Persons, organizations
- **Source:** International Consortium of Investigative Journalists
- **Download:** `https://offshoreleaks.icij.org/pages/database`
- **Format:** CSV (nodes + edges files)
- **Records:** ~800,000+ entities (Panama Papers, Pandora Papers, Paradise Papers, etc.)
- **License:** CC BY-SA
- **Key fields:** Name, jurisdiction, country, linked officers/entities, source dataset
- **Update frequency:** Per new ICIJ investigation
- **Sample:** [samples/raw/icij-offshore-leaks/README.md](samples/raw/icij-offshore-leaks/README.md)

---

## Beneficial Ownership

### OpenOwnership Register (BODS)

- **Entity types:** Persons, organizations
- **Source:** Open Ownership
- **Download:** `https://register.openownership.org/download`
- **Format:** JSON (Beneficial Ownership Data Standard)
- **Records:** Varies by jurisdiction (UK PSC: ~10 million statements)
- **License:** ODbL
- **Key fields:** Company name/number, beneficial owner name, nationality, ownership percentage, address
- **Update frequency:** Varies by source

---

## Voter Registration

### North Carolina Voter Registration

- **Entity types:** Persons
- **Source:** NC State Board of Elections
- **Download:** `https://s3.amazonaws.com/dl.ncsbe.gov/data/ncvoter_Statewide.zip`
- **Format:** Tab-delimited TXT (in ZIP)
- **Records:** ~8–9 million
- **License:** Public record (NC law); no commercial solicitation
- **Key fields:** Name, DOB, race, gender, registration address, mailing address, party, registration date, voter status
- **Update frequency:** Monthly (weekly snapshots available)

### Ohio Voter Registration

- **Entity types:** Persons
- **Source:** Ohio Secretary of State
- **Download:** `https://www6.ohiosos.gov/ords/f?p=VOTERFTP:HOME`
- **Format:** TXT/CSV
- **Records:** ~8 million
- **License:** Public record
- **Key fields:** Name, DOB, address, county, party, registration date
- **Update frequency:** Monthly

---

## Law Enforcement / Wanted

### FBI Most Wanted (API)

- **Entity types:** Persons
- **Source:** Federal Bureau of Investigation
- **Download:** `https://api.fbi.gov/wanted/v1/list` (JSON API, no key required)
- **Format:** JSON
- **Records:** ~350–500
- **License:** US government public domain
- **Key fields:** Name, aliases, DOB, place of birth, nationality, charges
- **Update frequency:** Continuous
- **Sample:** [samples/raw/fbi-wanted/README.md](samples/raw/fbi-wanted/README.md)

---

## Healthcare

### NPI National Provider Registry

- **Entity types:** Persons (individual providers), organizations (group practices)
- **Source:** CMS (Centers for Medicare & Medicaid Services)
- **Download:** `https://download.cms.gov/nppes/NPI_Files.html`
- **Format:** CSV (in ZIP)
- **Records:** ~7+ million
- **License:** US government public domain
- **Key fields:** NPI, provider name, credential, address, phone, taxonomy (specialty), gender
- **Update frequency:** Monthly full file, weekly incremental
- **Sample:** [samples/raw/npi-registry/README.md](samples/raw/npi-registry/README.md)

### CMS Open Payments

- **Entity types:** Persons (physicians), organizations (pharma/device companies)
- **Source:** Centers for Medicare & Medicaid Services
- **Download:** `https://openpaymentsdata.cms.gov/`
- **Format:** CSV
- **Records:** ~60+ million payment records; ~600,000+ unique physicians
- **License:** US government public domain
- **Key fields:** Physician name, NPI, specialty, address; company name, company ID; payment amounts
- **Update frequency:** Annually (with corrections)
- **ER value:** Links physicians to companies; cross-references with NPI registry

---

## Campaign Finance

### FEC Campaign Finance Data

- **Entity types:** Persons (donors), organizations (committees, PACs)
- **Source:** Federal Election Commission
- **Download:** `https://www.fec.gov/data/browse-data/?tab=bulk-data`
- **Format:** CSV
- **Records:** Tens of millions of contribution records; ~1 million unique donors per cycle
- **License:** US government public domain
- **Key fields:** Contributor name, address, employer, occupation, amount, committee name
- **Update frequency:** Daily during election cycles
- **Sample:** [samples/raw/fec-contributions/README.md](samples/raw/fec-contributions/README.md)

---

## Lobbying

### FARA Foreign Agent Registration

- **Entity types:** Persons, organizations
- **Source:** US Dept. of Justice
- **Download:** `https://www.justice.gov/nsd-fara/fara-bulk-data`
- **Format:** CSV
- **Records:** ~10,000 registrants
- **License:** US government public domain
- **Key fields:** Registrant name, address, country of principal, registration number, type
- **Update frequency:** Quarterly
- **Sample:** [samples/raw/fara/README.md](samples/raw/fara/README.md)

---

## Intellectual Property

### USPTO Patent Grant & Application Data

- **Entity types:** Persons (inventors), organizations (assignees)
- **Source:** US Patent and Trademark Office
- **Download:** `https://bulkdata.uspto.gov/`
- **Format:** XML, CSV, JSON
- **Records:** Millions of patents; ~3.5 million active patents with inventor/assignee data
- **License:** US government public domain
- **Key fields:** Inventor name, inventor address (city, state, country), assignee org name, assignee address, patent number
- **Update frequency:** Weekly
- **ER value:** Cross-link inventors (persons) with assignee companies (orgs); inventors appear across multiple patents with address variations

### USPTO Trademark Data

- **Entity types:** Persons, organizations (trademark owners)
- **Source:** US Patent and Trademark Office
- **Download:** `https://bulkdata.uspto.gov/` (Trademark section)
- **Format:** XML
- **Records:** ~8+ million trademark registrations
- **License:** US government public domain
- **Key fields:** Owner name, owner address, attorney name, mark text, serial/registration number
- **Update frequency:** Daily

---

## Education

### College Scorecard

- **Entity types:** Organizations (educational institutions)
- **Source:** US Dept. of Education
- **Download:** `https://collegescorecard.ed.gov/data/`
- **Format:** CSV
- **Records:** ~7,000 institutions
- **License:** US government public domain
- **Key fields:** Institution name, OPEID, address (city, state, ZIP), institution type, accreditor
- **Update frequency:** Annually
- **Sample:** [samples/raw/college-scorecard/README.md](samples/raw/college-scorecard/README.md)

### NCES Education Directory (IPEDS)

- **Entity types:** Organizations (schools, colleges, districts)
- **Source:** National Center for Education Statistics
- **Download:** `https://nces.ed.gov/ipeds/use-the-data`
- **Format:** CSV
- **Records:** ~7,000 postsecondary institutions; ~130,000 K-12 schools via CCD
- **Key fields:** Institution name, address, district name, NCES ID, phone, administrator name
- **License:** US government public domain
- **Update frequency:** Annually

---

## Pre-Mapped Senzing Data (CORD)

Senzing provides pre-mapped Collections Of Relatable Data (CORDs) — real
(not synthetic) historical snapshots already in Senzing JSONL format. These
are ready to load directly without any transformation.

> **Note:** CORD data is for evaluation/testing only, not operational use.

### Las Vegas CORD (214,845 records, 10 sources)

| Source             | Records | Download URL                                                        |
|--------------------|---------|---------------------------------------------------------------------|
| EQUIFAX            | 72,799  | `https://senzing.com/datasets/equifax-lasvegas_A.jsonl`             |
| NPI-PROVIDERS      | 71,060  | `https://senzing.com/datasets/npi-lasvegas.jsonl`                   |
| PROFOUND           | 28,040  | `https://senzing.com/datasets/profound-lasvegas.jsonl`              |
| ENFORMION          | 19,595  | `https://senzing.com/datasets/enformion-lasvegas_A.jsonl`           |
| NOMINO-RISK        | 14,119  | `https://senzing.com/datasets/nominodata_combined-lasvegas.jsonl`   |
| PPP_LOANS          | 3,488   | `https://senzing.com/datasets/ppp_loans_over_150k-lasvegas.jsonl`   |
| OPEN-OWNERSHIP     | 2,039   | `https://senzing.com/datasets/open_ownership-lasvegas.jsonl`        |
| GLEIF              | 1,952   | `https://senzing.com/datasets/gleif-lasvegas.jsonl`                 |
| US-LABOR-VIOLATIONS| 1,554   | `https://senzing.com/datasets/us_labor_violations-lasvegas.jsonl`   |
| ICIJ               | 199     | `https://senzing.com/datasets/icij-lasvegas.jsonl`                  |

### London CORD (123,911 records, 5 sources)

| Source          | Records | Download URL                                                         |
|-----------------|---------|----------------------------------------------------------------------|
| GLEIF           | 63,863  | `https://senzing.com/datasets/gleif-london.jsonl`                    |
| GLOBALDATA      | 40,569  | `https://senzing.com/datasets/globaldata-london_central_a.jsonl`     |
| ICIJ            | 19,232  | `https://senzing.com/datasets/icij-london.jsonl`                     |
| OPEN-SANCTIONS  | 137     | `https://senzing.com/datasets/open_sanctions-london.jsonl`           |
| OFAC            | 110     | `https://senzing.com/datasets/ofac-london.jsonl`                     |

### Moscow CORD (26,308 records, 6 sources)

| Source          | Records | Download URL                                                         |
|-----------------|---------|----------------------------------------------------------------------|
| ICIJ            | 13,996  | `https://senzing.com/datasets/icij-moscow.jsonl`                     |
| OPEN-OWNERSHIP  | 3,805   | `https://senzing.com/datasets/open_ownership-moscow.jsonl`           |
| OPEN-SANCTIONS  | 2,968   | `https://senzing.com/datasets/open_sanctions-moscow.jsonl`           |
| NOMINODATA      | 2,413   | `https://senzing.com/datasets/nominodata_risk-moscow.jsonl`          |
| OFAC            | 1,886   | `https://senzing.com/datasets/ofac-moscow.jsonl`                     |
| GLEIF           | 1,240   | `https://senzing.com/datasets/gleif-moscow.jsonl`                    |

More info: `https://senzing.com/senzing-ready-data-collections-cord/`

---

## Recommended Starting Set

For a bootcamp demonstrating entity resolution across multiple sources, start
with these complementary datasets:

| Priority | Source                  | Why                                                    |
|----------|-------------------------|--------------------------------------------------------|
| 1        | OFAC SDN List           | Rich person+org data with aliases, DOB, IDs            |
| 2        | HHS OIG LEIE            | Large person dataset with DOB, NPI, addresses           |
| 3        | GLEIF LEI               | Best cross-jurisdiction org identifier, CC0 license     |
| 4        | OpenSanctions           | Normalized aggregation of 100+ lists, daily updates     |
| 5        | ICIJ Offshore Leaks     | Relationship graph connecting persons to entities       |
| 6        | NC Voter Registration   | Largest free person dataset with DOB (~8M records)      |
| 7        | UK Companies House      | 5.5M orgs with addresses and registration numbers       |
| 8        | IRS 990                 | US nonprofits with EIN and officer/director names        |
| 9        | FEC Contributions       | Person names + addresses + employer (high duplication)   |
| 10       | NPI Registry            | 7M+ healthcare providers with addresses and specialties  |
