# PATSTAT GLOBAL - PostgreSQL database
A collection of R scripts to import PATSTAT Global into a PostgreSQL database, set up indicies and foreign keys, and create some summary statistics and auxiliary variables.

## How it works:
1. First, set up a PostGreSQL server ([check here for instructions](https://www.postgresql.org/docs/10/runtime.html))
2. Unzip the PATSTAT Global zip files twice (leading to further *.csv files `tlsXXX_partXX.csv`) in the folder of the corresponding `R` script.
2. Run the `R` script `Data_Upload_PostgreSQL.R` placed in the same folder as the PATSTAT zip.files. You only need to enter your personal details to connect to your database in the `dbConnect()` call.

Warning: While the data input and creation of the foreign keys runs pretty smooth, but the creation of the indices takes quite some time. Better run it over night. An alternative is also to run the calls one-by-one.

Have fun!
