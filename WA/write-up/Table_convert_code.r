library(kableExtra)
library(sa4ss)

out<-read.csv("C:/Users/Jason.Cope/Desktop/Vermilion stock assessments/VERMILION ROCKFISH ASSESSMENT OREGON/AGE data/Ageing error/Ageing error table for doc_REC.csv")
t = table_format(x = out,
      caption = 'Ageing error models and resultant model selection (AICc) values for 9 models of bias and precision explored for each lab used in the vermilion rockfish assessments. Gray bars indicate the chosen model. Model codes: 0= unbiased; 1 = Constant CV; 2 = Curvilinear SD; 3= Curvilinear CV',
      label = 'age-error-models',
      longtable = TRUE,
      font_size = 9,
      digits = 2,
      landscape = TRUE,
      col_names = c("","","","","","","","","","",""))

kableExtra::save_kable(t,
file = file.path("C:/Users/Jason.Cope/Documents/Github/Vermilion rockfish OR WA 2021/OR/write_up/tex_tables/ageing_error.tex"))


out<-read.csv("C:/Users/Jason.Cope/Desktop/Data-moderate assessments/Squarespot models/NewM/Sensitivities/Data/Sensitivity Comparison Plots/Data_sensis_LO/Likes_parms_devquants_table_data_scenarios.csv")
t = table_format(x = out,
      caption = 'Likelihood, parameter and derivied quantities from data treatment sensitivities.',
      label = 'data_sensis',
      longtable = TRUE,
      font_size = 9,
      digits = 2,
      landscape = TRUE,
      col_names = c("","Reference model","Catch lengths only","No catch lengths","No extra survey variance","No survey","Dirichlet","MI","No data weighting","Alt catch_3x","Alt catch_2008_shift"))

kableExtra::save_kable(t,
file = file.path("C:/Users/Jason.Cope/Documents/Github/squarespot_rockfish_2021/write_up/tex_tables/data_sensis.tex"))



out<-read.csv("C:/Users/Jason.Cope/Desktop/Data-moderate assessments/Squarespot models/NewM/Sensitivities/Model Specifications/Sensitivity Comparison Plots/Mode_specs/Likes_parms_devquants_table_modspecs_LH.csv")
t = table_format(x = out,
      caption = 'Likelihood, parameter and derivied quantities from life history model specification sensitivities.',
      label = 'modspec_LH_sensis',
      longtable = TRUE,
      font_size = 9,
      digits = 2,
      landscape = TRUE
#      col_names = c("","Reference model","Catch lengths only","No catch lengths","No extra survey variance","No survey","Dirichlet","MI","No data weighting","Alt catch_3x","Alt catch_2008_shift"))
)

kableExtra::save_kable(t,
file = file.path("C:/Users/Jason.Cope/Documents/Github/squarespot_rockfish_2021/write_up/tex_tables/modspec_LH_sensis.tex"))



out<-read.csv("C:/Users/Jason.Cope/Desktop/Data-moderate assessments/Squarespot models/NewM/Sensitivities/Model Specifications/Sensitivity Comparison Plots/Mode_specs/Likes_parms_devquants_table_modspecs_Rec_Misc.csv")
t = table_format(x = out,
      caption = 'Likelihood, parameter and derivied quantities from model specification sensitivities that consider recruitment, fleet and growth platoon treatments.',
      label = 'modspec_RecMisc_sensis',
      longtable = TRUE,
      font_size = 9,
      digits = 2,
      landscape = TRUE
#      col_names = c("","Reference model","Catch lengths only","No catch lengths","No extra survey variance","No survey","Dirichlet","MI","No data weighting","Alt catch_3x","Alt catch_2008_shift"))
)

kableExtra::save_kable(t,
file = file.path("C:/Users/Jason.Cope/Documents/Github/squarespot_rockfish_2021/write_up/tex_tables/modspec_RecMisc_sensis.tex"))
