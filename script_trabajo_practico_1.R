library(tidyverse)

"¿Cuál es el barrio con mayor km de ciclovías en avenidas?"

base_ciclovias <- read.csv2(file = "data/ciclovias_WGS84.csv",
                            encoding = "UTF-8")

base_ciclovias_avenidas <- base_ciclovias %>% 
  filter(TIPO_C == "AVENIDA" )

base_ciclovias_avenidas_barrio <- base_ciclovias_avenidas %>% 
  group_by(BARRIO) %>% 
   summarise(sum = sum(LONG), n = n())

summary(base_ciclovias_avenidas_barrio)

"El barrio con mayor cantidad de ciclovías en avenidas es Palermo con más de 17km de ciclovías en avenidas, correspondientes a 31 ciclovías y el barrio con menor cantidad de ciclovías en avenidas es Parque Chacabuco con 0.016km correspondientes a 1 tramo"
