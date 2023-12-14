CREATE INDEX ON tls201_appln (appln_auth, appln_nr, appln_kind, receiving_office);

CREATE INDEX ON tls206_person (person_name, person_name_orig_lg, person_address, person_ctry_code);

CREATE INDEX ON tls211_pat_publn (publn_auth, publn_nr, publn_kind, publn_date);

CREATE INDEX ON tls231_inpadoc_legal_event (appln_id, event_seq_nr);
