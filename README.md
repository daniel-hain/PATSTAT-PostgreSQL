# PATSTAT-PostgreSQL
A collection of R scripts to import PATSTAT (Autumn version 2018) into a PostgreSQL database, set up indicies and foreign keys, and create some summary statistics and auxiliary variables.

## How it works:
1. First, set up a PosttGreSQL server ([check here for instructions](https://www.postgresql.org/docs/10/runtime.html))
2. Run the `R` script `Data_Upload_PostgreSQL.R` placed in the same folder as the PATSTAT zip.files

Warning: While the data inpurt and creation of the foreign keys runs pretty smooth, but the creation of the indices takes quite some time. Better run it over night...

Have fun!
