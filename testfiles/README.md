# Test files

The Goslin implementations run their tests against these files. A grammar change should come with new rows in the file for that grammar. The column "Used by" shows which implementations read the file in their tests (checked in pygoslin, jgoslin and cppgoslin).

| File | Grammar or test | Format | Used by |
|---|---|---|---|
| `shorthand-test.csv` | Shorthand2020 | one row per lipid: the name on each structural level, from the most specific down to the species, then the sum formula | pygoslin, jgoslin, cppgoslin |
| `goslin-test.csv` | Goslin | one name per line | pygoslin, jgoslin, cppgoslin |
| `lipid-maps-test.csv` | LipidMaps | LIPID MAPS name, expected shorthand name | pygoslin, jgoslin, cppgoslin |
| `swiss-lipids-test.csv` | SwissLipids | one name per line | pygoslin, jgoslin, cppgoslin |
| `hmdb-test.csv` | HMDB | one name per line | pygoslin, jgoslin, cppgoslin |
| `fatty-acids-test.csv` | FattyAcids | LIPID MAPS id, systematic name, sum formula, expected shorthand name | pygoslin, jgoslin, cppgoslin |
| `formulas-lipid-maps.csv` | sum formulas | LIPID MAPS name, expected sum formula | pygoslin, jgoslin, cppgoslin |
| `formulas-swiss-lipids.csv` | sum formulas | SwissLipids name, expected sum formula | pygoslin, jgoslin, cppgoslin |
| `lipid-masses.csv` | masses | Skyline-style transition list: class, name, formula, adduct, m/z, charge | pygoslin, jgoslin, cppgoslin |
| `lipidnames.csv` | all parsers | the name to parse in the first column; lines starting with `#` are comments | pygoslin, cppgoslin |
| `lipidnames.txt` | all parsers | one name per line | cppgoslin |
| `swisslipids-names-only.tsv` | SwissLipids | one name per line | cppgoslin |
| `goslin-short.csv` | Goslin | one name per line; despite its name, a longer list (about 10,000 names) than `goslin-test.csv` | – |
| `hmdb-parsed-test.csv`, `hmdb-parsed-error-test.csv`, `hmdb-unparsed-test.csv` | HMDB | one name per line; HMDB names from 2020, split by the result of an earlier parse | – |
| `lipidnames-invalid.txt`, `lipidnames-invalid-01.txt` | all parsers | invalid names, one per line | – |
| `lipidmaps-names-Feb-10-2020.tsv` | source data | export of the [LIPID MAPS Structure Database (LMSD)](https://www.lipidmaps.org/databases/lmsd/overview) of 10 February 2020: id, name, systematic name, abbreviation, category, main and sub class. About half of the rows have no abbreviation. | – |
| `swisslipids-names-Feb-10-2020.tsv` | source data | export of the [SwissLipids](https://www.swisslipids.org) lipids table of 10 February 2020: id, level, name, abbreviation and synonyms | – |

Files marked "–" are not read by the tests of pygoslin, jgoslin or cppgoslin; they serve as reference data or for manual checks.

The file `../examplelists/swisslipids-names-only.tsv` is a copy of `swisslipids-names-only.tsv`, used by the cppgoslin example program `examples/swiss_lipids_statistics.cpp`.
