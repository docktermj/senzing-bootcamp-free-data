# FBI Most Wanted

- **Source:** Federal Bureau of Investigation
- **API endpoint:** `https://api.fbi.gov/wanted/v1/list`
- **Catalog entry:** [CATALOG.md — FBI Wanted](../../../CATALOG.md#fbi-most-wanted-api)
- **License:** US government public domain

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

| Field                | Description                                   |
|----------------------|-----------------------------------------------|
| uid                  | Unique FBI identifier                         |
| title                | Subject name / case title                     |
| aliases              | Array of known aliases                        |
| sex                  | Gender                                        |
| race                 | Race                                          |
| race_raw             | Race (raw/unprocessed value)                  |
| nationality          | Nationality                                   |
| dates_of_birth_used  | Array of DOB strings                          |
| place_of_birth       | Place of birth                                |
| hair                 | Hair color                                    |
| hair_raw             | Hair (raw/unprocessed value)                  |
| eyes                 | Eye color                                     |
| eyes_raw             | Eyes (raw/unprocessed value)                  |
| height_min / height_max | Height range (inches)                      |
| weight               | Weight description                            |
| weight_min / weight_max | Weight range (pounds)                      |
| build                | Body build description                        |
| complexion           | Complexion                                    |
| scars_and_marks      | Scars, marks, tattoos                         |
| age_range            | Estimated age range                           |
| age_min / age_max    | Minimum/maximum age                           |
| occupations          | Array of known occupations                    |
| languages            | Array of known languages                      |
| field_offices        | FBI field offices involved                    |
| legat_names          | Legal attache offices                         |
| locations            | Array of known locations                      |
| coordinates          | Array of lat/lon coordinates                  |
| possible_countries   | Array of possible countries                   |
| possible_states      | Array of possible states                      |
| caution              | Caution/warning text (HTML)                   |
| warning_message      | Warning message                               |
| details              | Case details (HTML)                           |
| description          | Case description                              |
| additional_information| Additional info text                          |
| remarks              | Remarks                                       |
| reward_text          | Reward description                            |
| reward_min / reward_max | Reward dollar range                        |
| subjects             | Array of subject categories                   |
| suspects             | Related suspects                              |
| person_classification| Classification (Main, Victim, etc.)           |
| poster_classification| Poster type (ten, fugitive, etc.)             |
| ncic                 | NCIC fingerprint code                         |
| status               | Case status                                   |
| path                 | URL path on fbi.gov                           |
| pathId               | Numeric path identifier                       |
| url                  | Full URL                                      |
| images               | Array of image objects                        |
| files                | Array of document objects                     |
| modified             | Last modified date                            |
| publication          | Publication date                              |

## Entity types

Persons (wanted fugitives, missing persons, seeking information subjects).
