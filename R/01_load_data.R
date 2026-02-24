library(dataverse)
Sys.setenv("DATAVERSE_SERVER" = )

df <- get_dataframe_by_name(filename='STAR_Students.tab',
                     dataset = '10.7910/DVN/SIWH9F',
                     server="dataverse.harvard.edu")

str(df)

# users guide available here: https://dataverse.harvard.edu/file.xhtml?fileId=666705&version=1.0

save(df, file = "data/df.rda")

# students who participate for 3 years

df %>% filter(flagg1+flagg2+flagg3==3)

# students who participate for 3 years with the same class type

df %>% 
  filter(flagg1+flagg2+flagg3==3) %>% 
  filter(g1classtype == g2classtype & g2classtype == g3classtype) %>% 
  select(stdntid, gender, race, g1classtype, 
         g1treadss, g1tmathss, g1tlistss,
         g2treadss, g2tmathss, g2tlistss,
         g3treadss, g3tmathss, g3tlistss)

# n=3413, 29.5%

