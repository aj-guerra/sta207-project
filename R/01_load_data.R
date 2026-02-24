library(dataverse)

df <- get_dataframe_by_name(filename='STAR_Students.tab',
                     dataset = '10.7910/DVN/SIWH9F',
                     server="dataverse.harvard.edu")

save(df, file = "../data/df.rda")
