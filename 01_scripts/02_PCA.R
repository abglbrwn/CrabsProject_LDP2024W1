library(vegan)
library(ggplot2)
library(ggordiplots)

#read in our data
crabs <- read.csv('../Project_LDP2024W1/00_rawdata/crabs_measurements.csv')

#perform PCA using vegan function rda on the continous variables
pca_crabs <- rda(crabs[5:9], scale = TRUE)

#create a new column that combines sex and sp for grouping on plots
crabs$spsex <- paste0(crabs$sp, crabs$sex)

#creating a biplot diagram with each species x sex category displayed in a different colour
gg_ordiplot(pca_crabs, groups = crabs$spsex, pt.size = 1)

