##############################################################################
# Create table template
##############################################################################
# Here we one by one create and define all the tables we need

##### 1 tls201_appln
dbExecute(con, "
CREATE TABLE tls201_appln (
  appln_id int NOT NULL DEFAULT ('0'), 
  appln_auth char(2) DEFAULT (''),
  appln_nr varchar(15)  DEFAULT (''),
  appln_kind char(2) DEFAULT ('  '),
  appln_filing_date date DEFAULT ('9999-12-31'),
  appln_filing_year smallint DEFAULT '9999',
  appln_nr_epodoc varchar(20) DEFAULT (''),
  appln_nr_original varchar(100) DEFAULT (''),
  ipr_type char(2) DEFAULT (''),
  receiving_office char(2) DEFAULT (''),
  internat_appln_id int DEFAULT ('0'),
  int_phase char(1) DEFAULT ('N'),
  reg_phase char(1) DEFAULT ('N'),
  nat_phase char(1) DEFAULT ('N'),
  earliest_filing_date date DEFAULT ('9999-12-31'),
  earliest_filing_year smallint DEFAULT '9999',
  earliest_filing_id int DEFAULT '0',
  earliest_publn_date date DEFAULT ('9999-12-31'),
  earliest_publn_year smallint DEFAULT '9999',
  earliest_pat_publn_id int DEFAULT '0',
  granted char(1) DEFAULT ('N'),
  docdb_family_id int DEFAULT ('0'),
  inpadoc_family_id int DEFAULT ('0'),
  docdb_family_size smallint DEFAULT '0',
  nb_citing_docdb_fam smallint DEFAULT '0',
  nb_applicants smallint DEFAULT '0',
  nb_inventors smallint DEFAULT '0',
  PRIMARY KEY (appln_id) 
);" ) 

##### 2 tls202_appln_title
dbExecute(con,"
CREATE TABLE tls202_appln_title (
  appln_id int NOT NULL DEFAULT ('0'),
  appln_title_lg char(2) DEFAULT (''),
  appln_title text,
  PRIMARY KEY (appln_id)
);" ) 

##### 3 tls203_appln_abstr
dbExecute(con,"
CREATE TABLE tls203_appln_abstr (
	appln_id int NOT NULL DEFAULT ('0'),
	appln_abstract_lg char(2) DEFAULT (''),
	appln_abstract text DEFAULT (''),
  PRIMARY KEY (appln_id)
);" ) 

##### 4 tls204_appln_prior
dbExecute(con,"
CREATE TABLE tls204_appln_prior (
	appln_id int NOT NULL DEFAULT ('0'),
	prior_appln_id int NOT NULL DEFAULT ('0'),
  prior_appln_seq_nr smallint DEFAULT ('0'),
  PRIMARY KEY (appln_id, prior_appln_id)
);" ) 

##### 5 tls205_tech_rel
dbExecute(con,"
CREATE TABLE tls205_tech_rel (
	appln_id int NOT NULL DEFAULT ('0'),
	tech_rel_appln_id int NOT NULL DEFAULT ('0'),
  PRIMARY KEY (appln_id, tech_rel_appln_id)
);" ) 

##### 6 tls206_person # Note: Redundant, since all info also in tls906_person
dbExecute(con, "
CREATE TABLE tls206_person (
  person_id int NOT NULL DEFAULT ('0'),
  person_name varchar(500) DEFAULT (''),
  person_name_orig_lg varchar(500) DEFAULT (''),  
  person_address varchar(1000) DEFAULT (''),
  person_ctry_code char(2) DEFAULT (''),
  nuts varchar(5) DEFAULT '',
 	nuts_level smallint DEFAULT ('9'),
  doc_std_name_id int DEFAULT ('0'),
  doc_std_name varchar(500) DEFAULT (''),
  psn_id int DEFAULT ('0'),
  psn_name varchar(500) DEFAULT (''),
  psn_level smallint DEFAULT ('0'),
  psn_sector varchar(50) DEFAULT (''),
  han_id int DEFAULT ('0'),
 	han_name varchar(500) DEFAULT (''),
 	han_harmonized int DEFAULT ('0'),
  PRIMARY KEY (person_id)
);")

##### 7 tls207_pers_appln
dbExecute(con,"
CREATE TABLE  tls207_pers_appln (
	person_id int NOT NULL DEFAULT ('0'),
	appln_id int NOT NULL DEFAULT ('0'),
	applt_seq_nr smallint NOT NULL DEFAULT ('0'),
	invt_seq_nr smallint NOT NULL DEFAULT ('0'),
  PRIMARY KEY (person_id, appln_id, applt_seq_nr, invt_seq_nr)
);" ) 

##### 8 tls209_appln_ipc
dbExecute(con,"
CREATE TABLE tls209_appln_ipc (
	appln_id int NOT NULL DEFAULT ('0'),
	ipc_class_symbol varchar(15) NOT NULL DEFAULT (''),
  ipc_class_level char(1) DEFAULT (''),
  ipc_version date DEFAULT ('9999-12-31'),
  ipc_value char(1) DEFAULT (''),
  ipc_position char(1) DEFAULT (''),
  ipc_gener_auth char(2) DEFAULT (''),
  PRIMARY KEY (appln_id, ipc_class_symbol)
);" ) 

##### 9 tls210_appln_n_cls
dbExecute(con,"
CREATE TABLE 	tls210_appln_n_cls (
	appln_id int NOT NULL DEFAULT ('0'),
	nat_class_symbol varchar(15) NOT NULL DEFAULT (''),
  PRIMARY KEY (appln_id, nat_class_symbol)
);" ) 

##### 10 tls211_pat_publn
dbExecute(con,"
CREATE TABLE tls211_pat_publn (
	pat_publn_id int NOT NULL DEFAULT ('0'),
	publn_auth char(2) DEFAULT (''),
	publn_nr varchar(15) DEFAULT (''),
	publn_nr_original varchar(100) DEFAULT (''),
	publn_kind char(2) DEFAULT (''),
	appln_id int DEFAULT ('0'),
	publn_date date DEFAULT ('9999-12-31'),
	publn_lg char(2) DEFAULT (''),
	publn_first_grant char(1) DEFAULT ('N'),
	publn_claims smallint DEFAULT ('0'),
  PRIMARY KEY (pat_publn_id)
);" ) 

##### 11 tls212_citation
dbExecute(con,"
CREATE TABLE tls212_citation (
	pat_publn_id int NOT NULL DEFAULT ('0'),
	citn_replenished int NOT NULL DEFAULT ('0'),
  citn_id smallint NOT NULL DEFAULT ('0'),
  citn_origin char(3) DEFAULT (''),
  cited_pat_publn_id int DEFAULT ('0'),
  cited_appln_id int DEFAULT ('0'),
  pat_citn_seq_nr smallint DEFAULT ('0'),
  cited_npl_publn_id int DEFAULT ('0'),
  npl_citn_seq_nr smallint DEFAULT ('0'),
  citn_gener_auth char(2) DEFAULT (''),	
  PRIMARY KEY (pat_publn_id, citn_replenished, citn_id)
);" ) 

##### 12 tls214_npl_publn
dbExecute(con,"
CREATE TABLE tls214_npl_publn (
	npl_publn_id int NOT NULL DEFAULT ('0'),
	npl_type char(1) DEFAULT (''),
	npl_biblio text DEFAULT (''),
	npl_author varchar(1000) DEFAULT (''),
	npl_title1 varchar(1000) DEFAULT (''),
	npl_title2 varchar(1000) DEFAULT (''),
	npl_editor varchar(500) DEFAULT (''),
	npl_volume varchar(50) DEFAULT (''),
	npl_issue varchar(50) DEFAULT (''),
	npl_publn_date varchar(8) DEFAULT (''),
	npl_publn_end_date varchar(8) DEFAULT (''),
	npl_publisher varchar(500) DEFAULT (''),
	npl_page_first varchar(200) DEFAULT (''),
	npl_page_last varchar(200) DEFAULT (''),
	npl_abstract_nr varchar(50) DEFAULT (''),
	npl_doi varchar(500) DEFAULT (''),
	npl_isbn varchar(30) DEFAULT (''),
	npl_issn varchar(30) DEFAULT (''),
	online_availability varchar(500) DEFAULT (''),	
	online_classification varchar(35) DEFAULT (''),
	online_search_date varchar(8) DEFAULT (''),
  PRIMARY KEY (npl_publn_id)
);" ) # Note: Problems with: NOT NULL

##### 13	tls215_citn_categ
dbExecute(con,"
CREATE TABLE tls215_citn_categ (
	pat_publn_id int NOT NULL DEFAULT ('0'),
	citn_replenished int NOT NULL DEFAULT ('0'),
	citn_id smallint NOT NULL DEFAULT ('0'),
	citn_categ char(2) NOT NULL DEFAULT (''),   
	relevant_claim smallint NOT NULL DEFAULT ('0'),
  PRIMARY KEY (pat_publn_id, citn_replenished, citn_id, citn_categ)
);" ) 

##### 14  tls216_appln_contn
dbExecute(con,"
CREATE TABLE tls216_appln_contn (
	appln_id int NOT NULL DEFAULT ('0'),
	parent_appln_id int NOT NULL DEFAULT ('0'),
	contn_type char(3) DEFAULT (''),         
  PRIMARY KEY (appln_id, parent_appln_id)
);" ) 

##### 15 	tls222_appln_jp_class
dbExecute(con,"
CREATE TABLE tls222_appln_jp_class (
	appln_id int NOT NULL DEFAULT ('0'),
	jp_class_scheme varchar(5) NOT NULL DEFAULT (''),
	jp_class_symbol varchar(50) NOT NULL DEFAULT (''),       
  PRIMARY KEY (appln_id, jp_class_scheme, jp_class_symbol)
);" ) 

##### 16 	tls223_appln_docus
dbExecute(con,"
CREATE TABLE tls223_appln_docus (
	appln_id int NOT NULL DEFAULT ('0'),
	docus_class_symbol varchar(50) NOT NULL DEFAULT (''),      
  PRIMARY KEY (appln_id, docus_class_symbol)
);" ) 

##### 17 tls224_appln_cpc
dbExecute(con,"
CREATE TABLE tls224_appln_cpc (
	appln_id int NOT NULL DEFAULT ('0'),
	cpc_class_symbol varchar(19) NOT NULL DEFAULT (''),
	cpc_scheme varchar(5) NOT NULL DEFAULT (''),
	cpc_version date DEFAULT ('9999-12-31'),
	cpc_value char(1) DEFAULT (''),
	cpc_position char(1) DEFAULT (''),
	cpc_gener_auth char(2) DEFAULT (''),  
  PRIMARY KEY (appln_id, cpc_class_symbol, cpc_scheme)
);" ) 

##### 18 tls225_docdb_fam_cpc
# Due to a change practise of the EPO and USPTO, CPC classification symbols are not assigned any more to applications, but to DOCDB families.  he new table TLS225_DOCDB_FAM_CPC reflects this. 
# It also contains information previously not available. The existing table TLS224_APPLN_CPC with its most relevant attributes is redundantly kept for downward compatibility.
dbExecute(con,"
CREATE TABLE tls225_docdb_fam_cpc (
	docdb_family_id int NOT NULL DEFAULT ('0'),
	cpc_class_symbol varchar(19) NOT NULL DEFAULT (''),
	cpc_gener_auth char(2) DEFAULT (''),  
	cpc_version date DEFAULT ('9999-12-31'),
	cpc_position char(1) DEFAULT (''),
	cpc_value char(1) DEFAULT (''),
	cpc_action_date date DEFAULT ('9999-12-31'),
	cpc_status char(20) DEFAULT (''),
	cpc_data_source char(20) DEFAULT (''),
  PRIMARY KEY (docdb_family_id, cpc_class_symbol, cpc_gener_auth)
);" ) 

##### 19 	tls226_person_orig
dbExecute(con,"
CREATE TABLE tls226_person_orig (
	person_orig_id int NOT NULL DEFAULT ('0'),
	person_id int NOT NULL DEFAULT ('0'),
	source char(5) DEFAULT (''),
	source_version varchar(10) DEFAULT (''),
	name_freeform varchar(500) DEFAULT (''),
	person_name_orig_lg varchar(500) DEFAULT (''),  
	last_name varchar(500) DEFAULT (''),
	first_name varchar(500) DEFAULT (''),
	middle_name varchar(500) DEFAULT (''),
	address_freeform varchar(1000) DEFAULT (''),
	address_1 varchar(500) DEFAULT (''),
	address_2 varchar(500) DEFAULT (''),
	address_3 varchar(500) DEFAULT (''),
	address_4 varchar(500) DEFAULT (''),
	address_5 varchar(500) DEFAULT (''),
	street varchar(500) DEFAULT (''),
	city varchar(200) DEFAULT (''),
  zip_code varchar(30) DEFAULT (''),
	state char(2) DEFAULT (''),
	person_ctry_code char(2) DEFAULT (''),
	residence_ctry_code char(2) DEFAULT (''),
	role varchar(2) DEFAULT (''),
  PRIMARY KEY (person_orig_id)
);" ) 

##### 20 tls227_pers_publn
dbExecute(con,"
CREATE TABLE tls227_pers_publn (
	person_id int NOT NULL DEFAULT ('0'),
	pat_publn_id int NOT NULL DEFAULT ('0'),
	applt_seq_nr smallint NOT NULL DEFAULT ('0'),
	invt_seq_nr smallint NOT NULL DEFAULT ('0'),
  PRIMARY KEY (person_id, pat_publn_id, applt_seq_nr, invt_seq_nr)
);" ) 

##### 21 	tls228_docdb_fam_citn
dbExecute(con,"
CREATE TABLE tls228_docdb_fam_citn (
	docdb_family_id int NOT NULL DEFAULT ('0'),
	cited_docdb_family_id int NOT NULL DEFAULT ('0'),
  PRIMARY KEY (docdb_family_id, cited_docdb_family_id)
);" ) 

##### 22 tls229_appln_nace2	
dbExecute(con,"
CREATE TABLE tls229_appln_nace2 (
	appln_id int NOT NULL DEFAULT ('0'),
	nace2_code varchar(5) NOT NULL DEFAULT (''),
	weight real DEFAULT (1),	
  PRIMARY KEY (appln_id, nace2_code)
);" ) 

##### 23  tls230_appln_techn_field
dbExecute(con,"
CREATE TABLE tls230_appln_techn_field (
	appln_id int NOT NULL DEFAULT ('0'),
	techn_field_nr smallint NOT NULL DEFAULT ('0'),
  weight real DEFAULT (1),
  PRIMARY KEY (appln_id, techn_field_nr)
);" ) 

##### 24 tls231_inpadoc_legal_event
dbExecute(con,"
CREATE TABLE tls231_inpadoc_legal_event (
	event_id int NOT NULL DEFAULT '0',
  appln_id int NOT NULL DEFAULT '0',
  event_seq_nr smallint default '0',
  event_type char(3) DEFAULT ('	'),
  event_auth char(2) DEFAULT ('  '),
  event_code varchar(4)  DEFAULT (''),
  event_filing_date date DEFAULT ('9999-12-31'),
  event_publn_date date DEFAULT ('9999-12-31'),
  event_effective_date date DEFAULT ('9999-12-31'),
  event_text varchar(1000) DEFAULT (''),
  ref_doc_auth char(2) DEFAULT ('  '),
  ref_doc_nr varchar(20) DEFAULT (''),
  ref_doc_kind char(2) DEFAULT ('  '),
  ref_doc_date date DEFAULT ('9999-12-31'),
  ref_doc_text varchar(1000) DEFAULT (''),
  party_type varchar(3) DEFAULT ('	'),
  party_seq_nr smallint default '0',
  party_new varchar(1000) DEFAULT (''),
  party_old varchar(1000) DEFAULT (''),
  spc_nr varchar(40) DEFAULT (''),
  spc_filing_date date DEFAULT ('9999-12-31'),
  spc_patent_expiry_date date DEFAULT ('9999-12-31'),
  spc_extension_date date DEFAULT ('9999-12-31'),
  spc_text varchar(1000) DEFAULT (''),
  designated_states varchar(1000) DEFAULT (''),
  extension_states varchar(30) DEFAULT (''),
  fee_country char(2) DEFAULT ('  '),
  fee_payment_date date DEFAULT ('9999-12-31'),
  fee_renewal_year smallint default '9999',
  fee_text varchar(1000) DEFAULT (''),
  lapse_country char(2) DEFAULT ('  '),
  lapse_date date  DEFAULT ('9999-12-31'),
  lapse_text varchar(1000) DEFAULT (''),
  reinstate_country char(2) DEFAULT ('  '),
  reinstate_date date DEFAULT ('9999-12-31'),
  reinstate_text varchar(1000) DEFAULT (''),
  class_scheme varchar(4) DEFAULT (''),
  class_symbol varchar(50) DEFAULT (''),
  PRIMARY KEY (event_id)
);" ) 


##### 25 tls801_country
dbExecute(con,"
CREATE TABLE tls801_country (
	ctry_code char(2) NOT NULL DEFAULT (''),
	iso_alpha3 char(3) DEFAULT (''),
	st3_name varchar(100) DEFAULT (''),
	organisation_flag char(1) DEFAULT (''),
	continent varchar(25) DEFAULT (''),
	eu_member char(1) DEFAULT (''),
	epo_member char(1) DEFAULT (''),
	oecd_member char(1) DEFAULT (''),
	discontinued char(1) DEFAULT (''),
  PRIMARY KEY (ctry_code)
);" ) 

##### 26 	tls803_legal_event_code
dbExecute(con,"
CREATE TABLE tls803_legal_event_code (
	event_auth char(2) NOT NULL DEFAULT (''),
	event_code varchar(4) NOT NULL DEFAULT (''),
	event_impact char(1) DEFAULT (''),
	event_descr varchar(250) DEFAULT (''),
	event_descr_orig varchar(250) DEFAULT (''),
	event_category_code char(1) DEFAULT (''),
	event_category_title varchar(100) DEFAULT (''),
  PRIMARY KEY (event_auth, event_code)
);" ) 

##### 27 tls901_techn_field_ipc
dbExecute(con,"
CREATE TABLE tls901_techn_field_ipc (
	ipc_maingroup_symbol varchar(8) NOT NULL DEFAULT (''),
	techn_field_nr smallint DEFAULT ('0'),
  techn_sector varchar(50) DEFAULT (''),
  techn_field varchar(50) DEFAULT (''),
  PRIMARY KEY (ipc_maingroup_symbol)
);" ) 

##### 28 tls902_ipc_nace2
dbExecute(con,"
CREATE TABLE tls902_ipc_nace2 (
	ipc varchar(8) NOT NULL DEFAULT (''),
	not_with_ipc varchar(8) NOT NULL DEFAULT (''),
	unless_with_ipc varchar(8) NOT NULL DEFAULT (''),
	nace2_code varchar(5) NOT NULL DEFAULT (''),
	nace2_weight smallint DEFAULT (1),
	nace2_descr varchar(150) DEFAULT (''),
  PRIMARY KEY (ipc, not_with_ipc, unless_with_ipc, nace2_code)
);" ) 

##### 29 tls904_nuts
dbExecute(con,"
CREATE TABLE tls904_nuts (
	nuts varchar(5) NOT NULL DEFAULT (''),
	nuts_level smallint DEFAULT ('0'),
	nuts_label varchar(250) DEFAULT (''),
  PRIMARY KEY (nuts)
);" ) 

# ##### 30 tls906_person
# # NOTE: HAs been deleted for 2020 version
# dbExecute(con,"
# CREATE TABLE tls906_person (
# 	person_id int NOT NULL DEFAULT ('0'),
# 	person_name varchar(500) DEFAULT (''),
# 	person_address varchar(1000) DEFAULT (''),
# 	person_ctry_code char(2) DEFAULT (''),
# 	nuts varchar(5) DEFAULT '',
# 	nuts_level smallint DEFAULT ('9'),
# 	doc_std_name_id int DEFAULT ('0'),
# 	doc_std_name varchar(500) DEFAULT (''),
# 	psn_id int DEFAULT ('0'),
# 	psn_name varchar(500) DEFAULT (''),
# 	psn_level smallint DEFAULT ('0'),
# 	psn_sector varchar(50) DEFAULT (''),
# 	han_id int DEFAULT ('0'),
# 	han_name varchar(500) DEFAULT (''),
# 	han_harmonized int DEFAULT ('0'),
#   PRIMARY KEY (person_id)
# );" 
# ) 
