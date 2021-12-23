# Theo Pleizier, 13-11-2020
# convert output inaSpeechSegmenter (tab delim csv) to label-track Audacity
# format for Audacity, see: https://manual.audacityteam.org/man/importing_and_exporting_labels.html
# input: labels, start, stop

library(tidyverse)

name_folder <- "data/"
audacity <- "txt4aud/"


file_names <- list.files("data/", recursive = TRUE)
file_names <- file_names[grepl("\\.csv$", file_names)]
file_names <- sort(file_names)

for (i in seq_along(file_names)){
  df_csv <- read_tsv(paste0(name_folder,file_names[i]))
  filter_labels <- c("male","female","music","speech")
  
  df_aud <- df_csv %>% 
    select(2:3,1) %>%      #verplaats eerste kolom naar derde positie
    filter(labels %in% filter_labels)
  
  file_name <- str_replace(file_names[i], ".csv", ".txt")
  file_dir <- str_sub(file_name, start = 1L, end = str_locate(file_name,"/")[1])
  
  if (!dir.exists(paste0(name_folder, audacity, file_dir))){
    dir.create(paste0(name_folder, audacity, file_dir), recursive = TRUE)
  }
  write.table(df_aud, 
              file = paste0(name_folder, audacity, file_name), 
              sep = "\t",
              row.names = FALSE, col.names =  FALSE,
              quote = FALSE) 
}
