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

### UK Companies House

- **Entity types:** Organizations
- **Source:** UK Companies House
- **Download:** `https://download.companieshouse.gov.uk/en_output.html`
- **Format:** CSV (multiple files, ~700MB each)
- **Records:** ~5.5 million
- **License:** Open Government Licence v3.0
- **Key fields:** Company number, name, registered address, category, status, SIC codes, previous names
- **Update frequency:** Monthly

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

### USASpending.gov Award Recipients

- **Entity types:** Organizations
- **Source:** US Treasury / USASpending.gov
- **Download:** `https://www.usaspending.gov/download_center/award_data_archive`
- **Format:** CSV (in ZIP)
- **Records:** ~500,000+ unique recipients
- **License:** US government public domain
- **Key fields:** Recipient name, UEI, address, business types, award amount, parent recipient
- **Update frequency:** Twice weekly

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

### Interpol Red Notices (API)

- **Entity types:** Persons
- **Source:** INTERPOL
- **Download:** `https://ws-public.interpol.int/notices/v1/red` (JSON API, no key required)
- **Format:** JSON (paginated)
- **Records:** ~7,000–8,000
- **License:** INTERPOL public data
- **Key fields:** Name, nationality, DOB, place of birth, gender, charges
- **Update frequency:** Continuous

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

---

## Pre-Mapped Senzing Data (CORD)

Senzing provides pre-mapped Collections Of Relatable Data (CORDs) for testing:

| Dataset    | Scope                          | Sources | Records |
|------------|--------------------------------|---------|---------|
| Las Vegas  | US data                        | 11      | Varies  |
| London     | International data             | 5       | Varies  |
| Moscow     | Cyrillic / non-roman script    | 6       | Varies  |

Access via the Senzing MCP `get_sample_data` tool or at
`https://senzing.com/senzing-ready-data-collections-cord/`

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
