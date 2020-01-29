#Open dplyr
library(dplyr)

#How is Air Passengers coposed 
str(AirPassengers)

#View original table 
View(AirPassengers)

#Create data frame
air_passengers2 = data.frame(matrix(AirPassengers, ncol = 12, byrow=TRUE, dimnames = list(as.character(1:12),month.abb)))

#View data frame
View(air_passengers2)

#Add year column 
air_passengers2$year = as.character(1949:1960)
View(air_passengers2)
 
#Move the year column to the beginning
air_passengers2 = air_passengers2 %>%
    select(year,everything())

# Maximum flights for each variable 
max_flights = air_passengers2 %>%                                                    
    summarise_all (max)

# Maximum flights for each month
max_flights_month = air_passengers2 %>%                                             
    summarise_if(is.numeric,max)

#Mean flights for each month that starts with J 
mean_flights_month_j = air_passengers2 %>%                                      
    summarise_at(vars(starts_with("J")),mean)

#Add columns for the first 3 months with their medians                      
air_passengers2 = air_passengers2 %>%                                        
    mutate_at(vars(one_of(month.abb[1:3])),funs(med = median))
  
# Simple named list: 
  list(mean = mean, median = median)

# Auto named with `tibble::lst()`: 
  tibble::lst(mean, median)

# Using lambdas
list(~ mean(., trim = .2), ~ median(., na.rm = TRUE))
