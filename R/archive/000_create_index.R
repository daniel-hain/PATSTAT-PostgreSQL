##############################################################################
# Create Indices
##############################################################################

##### tls201_appln
dbExecute(con,"
  CREATE INDEX tls_201_appln_auth ON tls201_appln (appln_auth);
  CREATE INDEX tls_201_appln_nr ON tls201_appln (appln_nr);
  CREATE INDEX tls_201_appln_kind ON tls201_appln (appln_kind);
  CREATE INDEX tls_201_appln_filing_year ON tls201_appln (appln_filing_year);
  CREATE INDEX tls_201_appln_nr_epodoc ON tls201_appln (appln_nr_epodoc);
  CREATE INDEX tls_201_appln_nr_original ON tls201_appln (appln_nr_original);                      
  CREATE INDEX tls_201_appln_ipr_type ON tls201_appln (ipr_type);
  CREATE INDEX tls_201_appln_internat_appln_id ON tls201_appln (internat_appln_id);
  CREATE INDEX tls_201_appln_int_phase ON tls201_appln (int_phase);
  CREATE INDEX tls_201_appln_reg_phase ON tls201_appln (reg_phase);
  CREATE INDEX tls_201_appln_nat_phase ON tls201_appln (nat_phase);
  CREATE INDEX tls_201_appln_earliest_filing_year ON tls201_appln (earliest_filing_year);
  CREATE INDEX tls_201_appln_earliest_filing_id ON tls201_appln (earliest_filing_id);
  CREATE INDEX tls_201_appln_earliest_publn_year ON tls201_appln (earliest_publn_year);
  CREATE INDEX tls_201_appln_earliest_pat_publn_id ON tls201_appln (earliest_pat_publn_id);
  CREATE INDEX tls_201_granted ON tls201_appln (granted);           
  CREATE INDEX tls_201_appln_docdb_family_id ON tls201_appln (docdb_family_id);                      
  CREATE INDEX tls_201_appln_inpadoc_family_id ON tls201_appln (inpadoc_family_id);
")

##### tls202_appln_title
dbExecute(con,"
  CREATE INDEX tls202_appln_title_lg ON tls202_appln_title (appln_title_lg);
")

##### tls203_appln_abstr
dbExecute(con, "
  CREATE INDEX tls203_appln_abstract_lg ON tls203_appln_abstr (appln_abstract_lg);
")

##### tls204_appln_prior
dbExecute(con,"
  CREATE INDEX tls204_appln_id ON tls204_appln_prior (appln_id);
  CREATE INDEX tls204_prior_appln_id ON tls204_appln_prior (prior_appln_id);
")

##### tls205_appln_id
dbExecute(con, "
  CREATE INDEX tls205_appln_id ON tls205_tech_rel (appln_id);
  CREATE INDEX tls205_tech_rel_appln_id ON tls205_tech_rel (tech_rel_appln_id);
")

##### tls206_person: NOTE: Redundant, since all the fino is already in tls227_pers_publn
dbExecute(con,"
  CREATE INDEX tls206_person_id ON tls206_person (person_id);
  CREATE INDEX tls206_person_ctry_code ON tls206_person (person_ctry_code);
")

##### tls207_pers_appln
dbExecute(con,"
  CREATE INDEX tls207_person_id ON tls207_pers_appln (person_id);
  CREATE INDEX tls207_appln_id ON tls207_pers_appln (appln_id);
  CREATE INDEX tls207_applt_seq_nr ON tls207_pers_appln (applt_seq_nr);
  CREATE INDEX tls207_invt_seq_nr ON tls207_pers_appln (invt_seq_nr);
")

##### tls209_appln_ipc
dbExecute(con,"
  CREATE INDEX tls209_appln_id ON tls209_appln_ipc (appln_id);
  CREATE INDEX tls209_ipc_class_symbol ON tls209_appln_ipc (ipc_class_symbol);
")

##### tls211_pat_publn
dbExecute(con,"
  CREATE INDEX tls211_appln_id ON tls211_pat_publn (appln_id);
  CREATE INDEX tls211_publn_kind ON tls211_pat_publn (publn_kind);
  CREATE INDEX tls211_publn_auth ON tls211_pat_publn (publn_auth);
  CREATE INDEX tls211_publn_nr ON tls211_pat_publn (publn_nr);
")

##### tls212_citation
dbExecute(con,"
  CREATE INDEX tls212_pat_publn_id ON tls212_citation (pat_publn_id);
  CREATE INDEX tls212_citn_id ON tls212_citation (citn_id);
  CREATE INDEX tls212_pat_publn_appln_id ON tls212_citation (cited_appln_id, pat_publn_id);
  CREATE INDEX tls212_cited_pat_publn_id ON tls212_citation (cited_pat_publn_id);
  CREATE INDEX tls212_cited_npl_publn_id ON tls212_citation (cited_npl_publn_id);
  CREATE INDEX tls212_cited_appln_id ON tls212_citation (cited_appln_id);
")

##### tls214_npl_publn
dbExecute(con, "
CREATE INDEX tls214_npl_type ON tls214_npl_publn (npl_type);
")

##### tls215_citn_categ
dbExecute(con, "
  CREATE INDEX tls215_pat_publn_id ON tls215_citn_categ (pat_publn_id);
  CREATE INDEX tls215_citn_id ON tls215_citn_categ (citn_id);
  CREATE INDEX tls215_citn_categ_idx ON tls215_citn_categ (citn_categ);
")

##### tls216_appln_id
dbExecute(con, "
  CREATE INDEX tls216_appln_id ON tls216_appln_contn (appln_id);
  CREATE INDEX tls216_parent_appln_id ON tls216_appln_contn (parent_appln_id);
")

##### tls222_appln_jp_class
dbExecute(con,"
  CREATE INDEX tls222_appln_id ON tls222_appln_jp_class (appln_id);
  CREATE INDEX tls222_jp_class_symbol ON tls222_appln_jp_class (jp_class_symbol);
  CREATE INDEX tls222_jp_class_scheme ON tls222_appln_jp_class (jp_class_scheme);
")

##### tls223_appln_docus
dbExecute(con,"
  CREATE INDEX tls223_appln_id ON tls223_appln_docus (appln_id);
  CREATE INDEX tls223_docus_class_symbol ON tls223_appln_docus (docus_class_symbol);
")

##### tls224_appln_cpc
dbExecute(con, "
CREATE INDEX tls224_appln_id ON tls224_appln_cpc (appln_id);
CREATE INDEX tls224_cpc_class_symbol ON tls224_appln_cpc (cpc_class_symbol);
CREATE INDEX tls224_cpc_scheme ON tls224_appln_cpc (cpc_scheme);
")

##### tls226_person_orig
dbExecute(con,"
  CREATE INDEX tls226_person_id ON tls226_person_orig (person_id);
")

##### tls227_pers_publn
dbExecute(con,"
  CREATE INDEX tls227_person_id ON tls227_pers_publn (person_id);
  CREATE INDEX tls227_pat_publn_id ON tls227_pers_publn (pat_publn_id);
  CREATE INDEX tls227_applt_seq_nr ON tls227_pers_publn (applt_seq_nr);
  CREATE INDEX tls227_invt_seq_nr ON tls227_pers_publn (invt_seq_nr);
")

##### tls228_docdb_fam_citn
dbExecute(con, "
  CREATE INDEX tls228_docdb_family_id ON tls228_docdb_fam_citn (docdb_family_id);
  CREATE INDEX tls228_cited_docdb_family_id ON tls228_docdb_fam_citn (cited_docdb_family_id);
")

##### tls229_appln_nace2
dbExecute(con, "
  CREATE INDEX tls229_appln_id ON tls229_appln_nace2 (appln_id);
  CREATE INDEX tls229_nace2_code ON tls229_appln_nace2 (nace2_code);
")

##### tls230_appln_techn_field
dbExecute(con, "
  CREATE INDEX tls230_appln_id ON tls230_appln_techn_field (appln_id);
  CREATE INDEX tls230_techn_field_nr ON tls230_appln_techn_field (techn_field_nr);
")

##### tls231_inpadoc_legal_event
dbExecute(con,"
  CREATE INDEX ON tls231_inpadoc_legal_event (appln_id, event_seq_nr);
")

##### tls801_country
dbExecute(con, "
  CREATE INDEX tls801_ctry_code ON tls801_country (ctry_code);
")

##### tls801_country
# None necessary

##### tls803_legal_event_code
# Does not work yet, so no indexing for now

##### tls901_techn_field_ipc
dbExecute(con, "
  CREATE INDEX tls901_techn_field_nr ON tls901_techn_field_ipc (techn_field_nr);
")

##### tls902_ipc_nace2
dbExecute(con, "
  CREATE INDEX tls902_ipc ON tls902_ipc_nace2 (ipc);
  CREATE INDEX tls902_not_with_ipc ON tls902_ipc_nace2 (not_with_ipc);
  CREATE INDEX tls902_unless_with_ipc ON tls902_ipc_nace2 (unless_with_ipc);
  CREATE INDEX tls902_nace2_code ON tls902_ipc_nace2 (nace2_code);
")

##### tls904_nuts
# None necessary

##### tls906_person
dbExecute(con, "
  CREATE INDEX tls906_person_address ON tls906_person (person_address);
  CREATE INDEX tls906_person_ctry_code ON tls906_person (person_ctry_code);
  CREATE INDEX tls906_nuts ON tls906_person (nuts);
  CREATE INDEX tls906_nuts_level ON tls906_person (nuts_level);
  CREATE INDEX tls906_doc_std_name_id ON tls906_person (doc_std_name_id);
  CREATE INDEX tls906_doc_std_name ON tls906_person (doc_std_name);
  CREATE INDEX tls906_psn_id ON tls906_person (psn_id);
  CREATE INDEX tls906_psn_name ON tls906_person (psn_name);
  CREATE INDEX tls906_psn_level ON tls906_person (psn_level);
  CREATE INDEX tls906_psn_sector ON tls906_person (psn_sector);
  CREATE INDEX tls906_han_id ON tls906_person (han_id);
  CREATE INDEX tls906_han_name ON tls906_person (han_name);
  CREATE INDEX tls906_han_harmonized ON tls906_person (han_harmonized);
")

##############################################################################
# tsvector word index for fulltext search (optional, takes quite some time.)
##############################################################################

# ##### tls202_appln_title
# dbExecute(con,"
#   CREATE FUNCTION to_tsvector_multilang(text) RETURNS tsvector AS $$
#     SELECT to_tsvector('english', $1) ||
#            to_tsvector('german', $1) || 
#            to_tsvector('french', $1) || 
#            to_tsvector('simple', $1)
#            $$ LANGUAGE sql IMMUTABLE;
#   CREATE INDEX tls202_appln_title ON tls202_appln_title USING gin(to_tsvector_multilang(appln_title));
# ")
# 
# ##### tls203_appln_abstr
# dbExecute(con, "
#   CREATE FUNCTION to_tsvector_multilang(text) RETURNS tsvector AS $$
#     SELECT to_tsvector('english', $1) ||
#            to_tsvector('german', $1) || 
#            to_tsvector('french', $1) || 
#            to_tsvector('simple', $1)
#            $$ LANGUAGE sql IMMUTABLE;
#   CREATE INDEX tls203_appln_abstract ON tls203_appln_abstr USING gin(to_tsvector_multilang(appln_abstract));
# ")
