



### Patstat_to_PostgreSQL: loads a series of zip files into PostgreSQL
patstat_import_postgre <- function(con,
                                  tbl_path,
                                  tbl_name = NULL,
                                  append = TRUE,
                                  overwrite = FALSE,
                                  chunk_size = 5000000,
                                  guess_max = 1000000,
                                  ...) {
  
  
  if(is.null(tbl_name)){
    tbl_name <- tbl_path %>% str_extract('tls[0-9]{3}')
  }
  
  print(paste("=============================================" )  ) 
  print(paste("Processing table", tbl_path %>% str_extract('tls.*') ))
  print(paste("=============================================" )  ) 
  
  read_csv_chunked(file = tbl_path,
                     callback = SideEffectChunkCallback$new(to_sql_chunked(con = con, tbl_name = tbl_name, append = append, overwrite = overwrite)),
                     chunk_size = chunk_size,
                     guess_max = guess_max,
                     na = c('', ' ', 'NA', 'XX', '9999-12-31', '9999'),
                     col_names = TRUE,
                     quoted_na = TRUE,
                     trim_ws = TRUE,
                     skip_empty_rows = TRUE,
                     progress = TRUE
    )
  
  print(paste("---> Processing table", tbl_path %>% str_extract('tls.*'), 'done' ))
  
  }



### Helper function to write chunked csv into SQL
to_sql_chunked <- function(con, 
                           tbl_name, 
                           append = TRUE, 
                           overwrite = FALSE) {
  function(x, pos) {
    x <- x %>% drop_na(appln_id)
    
    dbWriteTable(conn = con, 
                 name = tbl_name, 
                 value = x, 
                 append = append,
                 overwrite = overwrite,
                 row.names = FALSE)
  }
}
