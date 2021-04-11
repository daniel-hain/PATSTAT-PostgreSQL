

#### Column specifications

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