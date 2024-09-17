##The data to download is the crabs data accessed via the MASS package
library(MASS)

crabs_data <- MASS::crabs

#the data is exported as a csv
write.csv(crabs_data, "../Project_LDP2024W1/00_rawdata/crabs_measurements.csv")