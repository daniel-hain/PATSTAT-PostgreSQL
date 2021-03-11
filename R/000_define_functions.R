### Patstat_to_PostgreSQL: loads a series of zip files into PostgreSQL
Patstat_to_PostgreSQL <- function(files, 
                                  file_list,
                                  db,
                                  append = TRUE,
                                  overwrite = FALSE){
  
  # First check if everything is fine with input
  path <- file_list %>% pull(path)
  table_id  <- file_list %>% pull(table_id)
  

  print(paste("=============================================" )  ) 
  print(paste("Start processing table", tb_name, "with", length( table_id), "sepperate csv files of", sep = " ") ) 
  

    
    # unzip file, load in R, delete unziped file
    print(paste("Loading dataframe", i, "of", length(index), sep = " ") ) 
    unzip(path_zip, files = path_txt)
    x <- read_csv(
                 file = paste0(file_list[i, 'path']),
                 col_names = TRUE,
                 na = c('', ' ', 'NA', 'XX', '9999-12-31', '9999'),
                 quoted_na = TRUE,
                 trim_ws = TRUE,
                 guess_max = 1000000,
                 progress = TRUE,
                 skip_empty_rows = TRUE
               )
    file.remove(path_txt)
    
    # write in db
    print(paste("Dataframe", i, "loading in the database", sep = " ")) 
    dbWriteTable(conn = db, 
                 name = tb_name, 
                 value = x, 
                 append = append,
                 overwrite = overwrite,
                 row.names = FALSE)
    
    # remove leftover files
    rm(x, path_zip, path_txt)
  }
  print(paste("Upload of table", tb_name, "with", length(index), "sepperate zip files complete", sep = " ") ) 
  print(paste("=============================================" )  )
}