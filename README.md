# PATSTAT-PostgreSQL
A collection of R scripts to import PATSTAT (Autumn version 2020) into a PostgreSQL database, set up indicies and foreign keys, and create some summary statistics and auxiliary variables.

## How it works:
1. First, set up a PosttGreSQL server ([check here for instructions](https://www.postgresql.org/docs/10/runtime.html))
2. Unzip the PATSTAT zip files 2 times (leading to a lot of `csv` files such as `tlsXXX_partXX.csv`) in the folder of the corresponding `R` script. This is inconvenient but necessary, since the `R` internal `unzip()` 
3. 
4. Run the `RMD` script `main_notebook.Rmd` placed in the same folder as the PATSTAT zip.files. You only need to enter your personal details to connect to your database in the `dbConnect()` call.

Warning: While the data inpurt and creation of the foreign keys runs pretty smooth, but the creation of the indices takes quite some time. Better run it over night. An alternative is also to run the calls one-by-one.

Have fun!
