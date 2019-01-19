# Also check: https://github.com/altay-oz/load_patstat

##############################################################################
# Preample
##############################################################################

### general options
Sys.setenv(LANG = "en")
options("scipen" = 100, "digits" = 4) # override R's tendency to use scientific notation

### Clean workspace
rm(list=ls())
graphics.off()

### setWD (maybe needs installation of rstudioapi package)
require(rstudioapi); setwd(dirname(rstudioapi::getActiveDocumentContext()$path)); getwd()

### Load packages (maybe need to be installed first)
# Standard
library(tidyverse) # General DS toolkit
library(magrittr) # For advanced piping
library(data.table) # for fast fread and other fast data transformations

# Databases
library(DBI) # GEneral R database interface
library(RPostgreSQL) # PostgreSQL interface driver
library(dbplyr) # for dplyr with databases

##############################################################################
# Define functions
##############################################################################

# Outsourced in this script
source("000_define_functions.R")

##############################################################################
# Database connection
##############################################################################

# define driver
drv <- dbDriver("PostgreSQL")

# set up connection to existing PostgreSQL database, just plug in own details
con <- dbConnect(drv, 
                 dbname = "patstat2019",
                 host = "127.0.0.1", port = 5432,
                 user = "danieldb", password = "postgres2019")

##############################################################################
# Load adittional data: 
##############################################################################

# dataframe with all files to import plus the corresponding database
file.list <- tibble(table_id = NA,
               data = list.files(pattern = "tls.*zip") ) %>%
  mutate(data = gsub("\\.zip", "", .$data),
         table_id = gsub("\\_.*", "", .$data) )

table.names <- fread("PATSTAT_table_description.csv", data.table = FALSE) %>% as.tibble()

##############################################################################
# Create table template
##############################################################################

# Outsourced in this script
source("000_create_tables.R")

##############################################################################
# Load to PostgreSQ
##############################################################################

# Select or disselect certain rows
include.number <- nrow(table.names) # Indicate by number the tables to include (all = 1:nrow(table.names) )
exclude.name <- c(#"tls231" # NOTE: Causes problems, has to be fixed another time
                  ) # Indicate by name the tables to exclude

# subset the table
table.names.select <- table.names[include.number,] %>% filter(!(table_id %in% exclude.name) )

# This loop imports all tables to the PostgreSQL database. You can instead also run the function sepperate for the tables
for(i in 1:nrow(table.names.select) ) {
  Patstat_to_PostgreSQL(files = file.list, 
                        db = con,
                        append = TRUE,
                        overwrite = FALSE,
                        tb_pat = table.names.select[i, "table_id"],
                        tb_own = table.names.select[i, "name"]
                        )
}


# ### Manual selection (if wished)
# Patstat_to_PostgreSQL(files = file.list, 
#                       db = con,
#                       append = TRUE,
#                       overwrite = FALSE,
#                       tb_pat = tibble(name = "tls906"),
#                       tb_own = tibble(name = "person") )

# ### To delete tables
# dbRemoveTable(con, "tls906_person")
#
# # To delete all tables
# rem <- dbListTables(con); for(i in 1:length(rem )){dbRemoveTable(con, rem[i])}; rm(rem)

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
source("000_clustering.R")


##############################################################################
# Disconnect
##############################################################################

dbDisconnect(con)
dbUnloadDriver(drv)
