# FBI Most Wanted

- **Source:** Federal Bureau of Investigation
- **API endpoint:** `https://api.fbi.gov/wanted/v1/list`
- **Catalog entry:** [CATALOG.md — FBI Wanted](../../../CATALOG.md#fbi-most-wanted-api)

## Files

### fbi-wanted-sample.json

JSON response from the FBI Wanted API. Structure:

```
{
  "total": ...,
  "items": [ ... ],
  "page": ...
}
```

Each item contains (key fields for entity resolution):

| Field              | Description                                   |
|--------------------|-----------------------------------------------|
| uid                | Unique FBI identifier                         |
| title              | Subject name / case title                     |
| sex                | Gender                                        |
| hair               | Hair color                                    |
| weight             | Weight                                        |
| age_range          | Estimated age range                           |
| age_min / age_max  | Minimum/maximum age                           |
| dates_of_birth_used| Array of DOB strings                          |
| nationality        | Nationality                                   |
| race               | Race                                          |
| occupations        | Array of known occupations                    |
| aliases            | Array of known aliases                        |
| field_offices      | FBI field offices involved                    |
| locations          | Array of known locations                      |
| caution            | Caution/warning text (HTML)                   |
| reward_text        | Reward description                            |
| ncic               | NCIC fingerprint code                         |
| files              | Array of image/document URLs                  |

## Entity types

Persons (wanted fugitives, missing persons, seeking information subjects).
