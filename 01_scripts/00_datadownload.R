##Note that it is not necessary to run this code to proceed with recreating this project
##The required data should already be in the 00_rawdata subdirectory of the project you
#downloaded from OSF

##The data to download is the crabs data accessed via the MASS package
library(MASS)

crabs_data <- MASS::crabs

#the data is exported as a csv to the 00_rawdata folder
#overwrite = true is on incase you would like to re-run this script and download the data again
write.csv(crabs_data, "../Project_LDP2024W1/00_rawdata/crabs_measurements.csv", overwrite = TRUE)