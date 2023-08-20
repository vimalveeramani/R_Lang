library(dplyr)

# select females
newdata <- filter(starwars, 
                  gender == "female")

# select females that are from Alderaan
newdata <- filter(starwars, 
                  gender == "female" & 
                  homeworld == "Alderaan")


# select individuals that are from 
# Alderaan, Coruscant, or Endor
newdata <- filter(starwars, 
                  homeworld == "Alderaan" | 
                  homeworld == "Coruscant" | 
                  homeworld == "Endor")

# this can be written more succinctly as
newdata <- filter(starwars, 
                  homeworld %in% c("Alderaan", "Coruscant", "Endor"))

newdata
