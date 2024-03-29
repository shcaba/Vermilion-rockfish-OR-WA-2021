
#detach("package:sa4ss", unload = TRUE)
#remotes::install_github("nwfsc-assess/sa4ss")
#devtools::load_all("C:/Users/Chantel.Wetzel/Documents/GitHub/r4ss")
library(sa4ss)
library(r4ss)

# Specify the directory for the document
setwd("C:/Users/Jason.Cope/Documents/Github/Vermilion rockfish OR WA 2021/WA/write-up")

# Create the needed items to generate the "right" template that would be based on the inputs here:
 sa4ss::draft(authors = c("Jason M. Cope","Tien-Shui Tsou","Kristen Hinton","Corey Niles"),
   			 species = "Vermilion rockfish",
   			 latin = "Sebastes miniatus",
   			 coast = "US West - Oregon",
   			 type = c("sa"),
   			 create_dir = FALSE,
   			 edit = FALSE)

# Create a model Rdata object
# Create a model Rdata object
# mod_loc = "C:/Assessments/2021/squarespot_rockfish_2021/models/2.5_rec_devs_sigmaR60"

###########################################################################
# Create object based on a new model
###########################################################################

base_name = "Reference model"
mod_loc = file.path(
  "//nwcfile/FRAM/Assessments/CurrentAssessments/vermilion_2021/WA/models",
  base_name)

sa4ss::read_model(
  mod_loc = mod_loc,
  create_plots = FALSE, 
  html = FALSE,
  save_loc = file.path(getwd(), "tex_tables"),
  verbose = TRUE)

###########################################################################
# Create tex files from the executive summary tables
###########################################################################
#source("C:/Users/Chantel.Wetzel/Documents/GitHub/sa4ss/R/es_table_tex.R")
sa4ss::es_table_tex(dir = mod_loc, 
                    save_loc = file.path(getwd(), "tex_tables"), 
                    csv_name = "table_labels.csv")

###########################################################################
# Read and create tex files for tables listed in "table" folder in the doc
###########################################################################

sa4ss::es_table_tex(dir = file.path(getwd(), 'tables'), 
                    save_loc = file.path(getwd(), "tex_tables"), 
                    csv_name = "all_tables.csv")

###########################################################################
# Render Call 
###########################################################################

if(file.exists("_main.Rmd")){
  file.remove("_main.Rmd")
}
# Render the pdf
bookdown::render_book("00a.Rmd", clean=FALSE, output_dir = getwd())

#########################################################################

