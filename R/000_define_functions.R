### Patstat_to_PostgreSQL: loads a series of zip files into PostgreSQL
Patstat_to_PostgreSQL <- function(files, 
                                  tb_pat, 
                                  tb_own, 
                                  db,
                                  append = TRUE,
                                  overwrite = FALSE){
  
  # First check if everything is fine with input
  tb_pat %<>% pull()
  tb_own  %<>% pull()
  
  # Generate table name and subset index
  tb_name = paste(tb_pat, tb_own, sep = "_")
  index <- files %>%
    filter(table_id == tb_pat) %>%
    pull(data) 

  print(paste("=============================================" )  ) 
  print(paste("Start processing table", tb_name, "with", length(index), "sepperate zip files.", sep = " ") ) 
  
  for(i in 1:length(index)) {
    path_zip <- paste0(index[i],".zip")
    path_txt <- paste0(index[i],".txt")
    
    # unzip file, load in R, delete unziped file
    print(paste("Unzipping and loading dataframe", i, "of", length(index), sep = " ") ) 
    unzip(path_zip, files = path_txt)
    x <- fread(path_txt, 
               header = TRUE, 
               sep = ",", 
#               dec = ".",
#               quote="",
#               check.names = FALSE
               encoding = "UTF-8", 
               data.table = FALSE, 
               stringsAsFactors = FALSE, 
               na.strings = NULL, 
               logical01 = FALSE, 
               strip.white = FALSE, 
               fill = FALSE, 
               blank.lines.skip = FALSE
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