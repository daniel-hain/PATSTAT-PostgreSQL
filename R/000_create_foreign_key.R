##############################################################################
# Create foreign key
##############################################################################

##### tls202_appln_title
dbExecute(con,"
          ALTER TABLE tls202_appln_title ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls203_appln_abstr
dbExecute(con,"
          ALTER TABLE tls203_appln_abstr ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls204_appln_prior
dbExecute(con,"
          ALTER TABLE tls204_appln_prior ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ALTER TABLE tls204_appln_prior ADD FOREIGN KEY (prior_appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls205_tech_rel
dbExecute(con,"
          ALTER TABLE tls205_tech_rel ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ALTER TABLE tls205_tech_rel ADD FOREIGN KEY (tech_rel_appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### 6 tls206_person 
# No key needed, only incomming

##### tls207_pers_appln
dbExecute(con,"
          ALTER TABLE tls207_pers_appln ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ALTER TABLE tls207_pers_appln ADD FOREIGN KEY (person_id) REFERENCES tls906_person(person_id);
          ALTER TABLE tls207_pers_appln ADD FOREIGN KEY (person_id) REFERENCES tls206_person(person_id);
          ")

##### tls209_appln_ipc
dbExecute(con,"
          ALTER TABLE tls209_appln_ipc ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls210_appln_n_cls
dbExecute(con,"
          ALTER TABLE tls210_appln_n_cls ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls211_pat_publn
dbExecute(con,"
          ALTER TABLE tls211_pat_publn ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls212_citation
dbExecute(con,"
          ALTER TABLE tls212_citation ADD FOREIGN KEY (cited_appln_id) REFERENCES tls201_appln(appln_id);
          ALTER TABLE tls212_citation ADD FOREIGN KEY (cited_pat_publn_id) REFERENCES tls211_pat_publn(pat_publn_id);
          ALTER TABLE tls212_citation ADD FOREIGN KEY (pat_publn_id) REFERENCES tls211_pat_publn(pat_publn_id);
          ALTER TABLE tls212_citation ADD FOREIGN KEY (cited_npl_publn_id) REFERENCES tls214_npl_publn(npl_publn_id);
          ")


##### tls215_citn_categ
dbExecute(con,"
          ALTER TABLE tls215_citn_categ ADD FOREIGN KEY (pat_publn_id, citn_replenished, citn_id) REFERENCES tls212_citation(pat_publn_id, citn_replenished, citn_id);
          ")

##### tls216_appln_contn
dbExecute(con,"
          ALTER TABLE tls216_appln_contn ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ALTER TABLE tls216_appln_contn ADD FOREIGN KEY (parent_appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls222_appln_jp_class
dbExecute(con,"
          ALTER TABLE tls222_appln_jp_class ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls223_appln_docus
dbExecute(con,"
          ALTER TABLE tls223_appln_docus ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls224_appln_cpc
dbExecute(con,"
          ALTER TABLE tls224_appln_cpc ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls226_person_orig
dbExecute(con,"
          ALTER TABLE tls226_person_orig ADD FOREIGN KEY (person_id) REFERENCES tls906_person(person_id);
          ALTER TABLE tls226_person_orig ADD FOREIGN KEY (person_id) REFERENCES tls206_person(person_id);
          ")

##### tls227_pers_publn
dbExecute(con,"
          ALTER TABLE tls227_pers_publn ADD FOREIGN KEY (person_id) REFERENCES tls206_person(person_id);
          ALTER TABLE tls227_pers_publn ADD FOREIGN KEY (person_id) REFERENCES tls906_person(person_id);
          ")

##### tls228_docdb_fam_citn
dbExecute(con,"
          ALTER TABLE tls228_docdb_fam_citn ADD FOREIGN KEY (docdb_family_id) REFERENCES tls201_appln(docdb_family_id);
          ALTER TABLE tls228_docdb_fam_citn ADD FOREIGN KEY (cited_docdb_family_id) REFERENCES tls201_appln(docdb_family_id);
          ")
# ERROR:  there is no unique constraint matching given keys for referenced table "tls201_appln"

##### tls229_appln_nace2
dbExecute(con,"
          ALTER TABLE tls229_appln_nace2 ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls230_appln_techn_field
dbExecute(con,"
          ALTER TABLE tls230_appln_techn_field ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ")

##### tls231_inpadoc_legal_event
dbExecute(con,"
          ALTER TABLE tls231_inpadoc_legal_event ADD FOREIGN KEY (appln_id) REFERENCES tls201_appln(appln_id);
          ALTER TABLE tls231_inpadoc_legal_event ADD FOREIGN KEY (event_auth, event_code) REFERENCES tls803_legal_event_code(event_auth, event_code);
          ")

