## Changes

List of mentioned changes in the data catalog `DataCatalog_Global_v5.22.pdf` file.


### 2021a

- No changes


### 2022a

- Based on the data extraction from Week 49, 2021


### 2022b

- Based on the data extraction from Week 29, 2022
- Due to technical reasons (change of internal database and re-keying) the `EVENT_ID` stability (table `TLS231_INPADOC_LEGAL_EVENT`), compared to the previous edition, cannot be guaranteed.
- Small change in the computation of WEIGHT in table `TLS229_APPLN_NACE2`, see Section 6.190 WEIGHT.
- Obsolete external web links removed.
- Deprecated attributes removed (`APPLN_NR_EPODOC` from table `TLS201_APPLN`, and `EVENT_IMPACT` from table `TLS803_LEGAL_EVENT_CODE`).
- No PSN update for new names (the last based on Autumn 2021).
- Due to a technical issue some EP and WO documents are missing from the database


### 2023a

- Based on the data extraction from Week 8, 2023
- No PSN update for new names (the last based on Autumn 2021)
- No update of the OECD REGPAT enhancements for NUTS (the last based on Spring 2022)
- `TLS223_APPLN_DOCUS` is removed because not updated anymore
- In `TLS225_DOCDB_FAM_CPC`, the undefined values of `CPC_POSITION` are now denoted by `N` (instead of space or empty string in the previous editions)
- In the previous PATSTAT Global editions, for the US publications from 1833-2011 with inventor information only, the applicant used to be the same as the inventor (e.g., `US 1472793 A`). In this PATSTAT Global edition that is not the case (i.e., the applicant is not given) due to a technical issue. In the next edition (Autumn 2023) the applicant should be re-introduced for such cases, to be again the same as in the previous editions (Autumn 2022 and earlier).


### 2023b

- Based on the data extraction from Week 31, 2023
- All attributes from `TLS223_APPLN_DOCUS` are finally removed
- No PSN update for new names (the last based on Autumn 2021)
- `APPLN_NR_EPODOC` is re-introduced in table `TLS201_APPLN` because of usage in PATSTAT EP Register
- In the PATSTAT Global editions before Spring 2023, for the US publications from 1833-2011 with inventor information only, the applicant used to be the same as the inventor (e.g., `US 1472793 A`). In the previous edition (Spring 2023) that was not the case (i.e., the applicant was not given) due to a technical issue. In this edition (Autumn 2023) the applicant is again the same as in Autumn 2022 and earlier editions.
