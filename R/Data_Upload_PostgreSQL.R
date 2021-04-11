##############################################################################
# Preample
##############################################################################



##############################################################################
# Define functions
##############################################################################







##############################################################################
# Create table template
##############################################################################

# Outsourced in this script
source("000_create_tables.R")

##############################################################################
# Load to PostgreSQ
##############################################################################



# This loop imports all tables to the PostgreSQL database. You can instead also run the function sepperate for the tables
for(i in 1:nrow(table_names_select) ) {
  Patstat_to_PostgreSQL(files = file_list, 
                        db = con,
                        append = TRUE,
                        overwrite = FALSE,
                        tb_pat = table_names_select[i, "table_id"],
                        tb_own = table_names_select[i, "name"]
                        )
}


# ### To delete tables
# dbRemoveTable(con, "tls906_person")
#
# # To delete all tables
# 
#rem <- dbListTables(con); rem <- rem[rem != 'users']; for(i in 1:length(rem )){dbRemoveTable(con, rem[i])}; rm(rem)

##############################################################################
# Inspect
##############################################################################

# Inspect DB:
summary(con)
dbListTables(con)
dbListFields(con, "tls201_appln")

# Inspect with dbplyr
tbl(con, "tls201_appln") %>% glimpse()


### Count rows

# TODO

##############################################################################
# Indexing
##############################################################################

# Outsourced in this script: You however might want to run it one by one
# Warning: This takes some hours...
source("000_create_index.R")

##############################################################################
# Create Foreign Key
##############################################################################

# Outsourced in this script: You however might want to run it one by one
source("000_create_foreign_key.R")

##############################################################################
# Clustering
##############################################################################

# Outsourced in this script: You however might want to run it one by one
# source("000_clustering.R")
# Note: Not done yet...


##############################################################################
# Disconnect
##############################################################################

dbDisconnect(con)
dbUnloadDriver(drv)
