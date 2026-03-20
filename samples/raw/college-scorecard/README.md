# College Scorecard

- **Source:** US Dept. of Education
- **API docs:** `https://collegescorecard.ed.gov/data/`
- **Catalog entry:** [CATALOG.md — College Scorecard](../../../CATALOG.md#college-scorecard)
- **License:** US government public domain

## Files

### scorecard-sample.json

JSON response from the College Scorecard API. Structure:

```
{
  "metadata": { "total": ..., "page": ..., "per_page": ... },
  "results": [ ... ]
}
```

Each result object contains:

| Field              | Description                         |
|--------------------|-------------------------------------|
| id                 | Unique institution ID (IPEDS UNITID)|
| school.name        | Institution name                    |
| school.city        | City                                |
| school.state       | State (2-letter code)               |
| school.zip         | ZIP code                            |
| school.school_url  | Institution website                 |
| school.accreditor  | Accrediting body name               |

## Entity types

Organizations (postsecondary educational institutions).
