

#### Column specifications

###
cols_tls201_appln <- cols(
  .default = col_double(),
  appln_auth = col_character(),
  appln_nr = col_character(),
  appln_kind = col_character(),
  appln_filing_date = col_date(format = ""),
  appln_nr_epodoc = col_character(),
  appln_nr_original = col_character(),
  ipr_type = col_character(),
  receiving_office = col_character(),
  int_phase = col_character(),
  reg_phase = col_character(),
  nat_phase = col_character(),
  earliest_filing_date = col_date(format = ""),
  earliest_publn_date = col_date(format = ""),
  granted = col_character()
)

###
cols_tls204_appln_prior <- cols(
  appln_id = col_double(),
  prior_appln_id = col_double(),
  prior_appln_seq_nr = col_double()
)

###
cols_tls205_tech_rel <- cols(
  appln_id = col_double(),
  tech_rel_appln_id = col_double()
)

###

cols_tls205_tech_rel <- cols(
  person_id = col_double(),
  person_name = col_character(),
  person_name_orig_lg = col_character(),
  person_address = col_character(),
  person_ctry_code = col_character(),
  nuts = col_character(),
  nuts_level = col_double(),
  doc_std_name_id = col_double(),
  doc_std_name = col_character(),
  psn_id = col_double(),
  psn_name = col_character(),
  psn_level = col_double(),
  psn_sector = col_character(),
  han_id = col_double(),
  han_name = col_character(),
  han_harmonized = col_double()
)

###

cols_tls206_person <- cols(
  person_id = col_double(),
  person_name = col_character(),
  person_name_orig_lg = col_character(),
  person_address = col_character(),
  person_ctry_code = col_character(),
  nuts = col_character(),
  nuts_level = col_double(),
  doc_std_name_id = col_double(),
  doc_std_name = col_character(),
  psn_id = col_double(),
  psn_name = col_character(),
  psn_level = col_double(),
  psn_sector = col_character(),
  han_id = col_double(),
  han_name = col_character(),
  han_harmonized = col_double()
)

###
cols_tls207_pers_appln <- cols(
  person_id = col_double(),
  appln_id = col_double(),
  applt_seq_nr = col_double(),
  invt_seq_nr = col_double()
)

###

cols_tls212_citation <- cols(
  pat_publn_id = col_double(),
  citn_replenished = col_double(),
  citn_id = col_double(),
  citn_origin = col_character(),
  cited_pat_publn_id = col_double(),
  cited_appln_id = col_double(),
  pat_citn_seq_nr = col_double(),
  cited_npl_publn_id = col_double(),
  npl_citn_seq_nr = col_double(),
  citn_gener_auth = col_character()
)

### 

cols_tls215_citn_categ <- cols(
  pat_publn_id = col_double(),
  citn_replenished = col_double(),
  citn_id = col_double(),
  citn_categ = col_character(),
  relevant_claim = col_double()
)

###
cols_tls216_appln_contn <- cols(
  appln_id = col_double(),
  parent_appln_id = col_double(),
  contn_type = col_character()
)

###

cols_tls222_appln_jp_class <- cols(
  appln_id = col_double(),
  jp_class_scheme = col_character(),
  jp_class_symbol = col_character()
)

###
cols_tls223_appln_docus <- cols(
  appln_id = col_double(),
  docus_class_symbol = col_character()
)

###

#

###

cols_tls225_docdb_fam_cpc <- cols(
  docdb_family_id = col_double(),
  cpc_class_symbol = col_character(),
  cpc_gener_auth = col_character(),
  cpc_version = col_date(format = ""),
  cpc_position = col_character(),
  cpc_value = col_character(),
  cpc_action_date = col_date(format = ""),
  cpc_status = col_character(),
  cpc_data_source = col_character()
)

###

cols_tls227_pers_publn <- cols(
  person_id = col_double(),
  pat_publn_id = col_double(),
  applt_seq_nr = col_double(),
  invt_seq_nr = col_double()
)

###

cols_tls228_docdb_fam_citn <- cols(
  docdb_family_id = col_double(),
  cited_docdb_family_id = col_double()
)

###

cols_tls230_appln_techn_field <- cols(
  appln_id = col_double(),
  techn_field_nr = col_double(),
  weight = col_double()
)

###

cols_tls231_inpadoc_legal_event <- cols(
  .default = col_character(),
  event_id = col_double(),
  appln_id = col_double(),
  event_seq_nr = col_double(),
  event_filing_date = col_date(format = ""),
  event_publn_date = col_date(format = ""),
  event_effective_date = col_date(format = ""),
  ref_doc_date = col_date(format = ""),
  party_seq_nr = col_double(),
  spc_filing_date = col_date(format = ""),
  spc_patent_expiry_date = col_date(format = ""),
  spc_extension_date = col_date(format = ""),
  fee_payment_date = col_date(format = ""),
  fee_renewal_year = col_double(),
  fee_text = col_logical(),
  lapse_date = col_date(format = ""),
  reinstate_date = col_date(format = ""),
  reinstate_text = col_logical()
)