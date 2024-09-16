#install BIEN, sf, and tidyverse if not already installed
install.packages("BIEN")
install.packages("sf")
install.packages("tidyverse")

library(tidyverse)
library(sf)
library(BIEN)

#from BIEN (Botanical Information and Ecology Network) database, 
#download range maps for common British Columbia conifer species

Conifers <- c("Abies amabilis","Abies grandis", "Abies lasiocarpa", "Thuja plicata",
              "Pseudotsuga menziesii", "Tsuga mertensiana","Tsuga heterophylla",
              "Juniperus scopulorum", "Larix lyallii","Larix laricina", "Larix occidentalis",
              "Pinus albicaulis","Pinus flexilis","Pinus banksiana","Pinus contorta",
              "Pinus monticola","Pinus ponderosa","Picea mariana","Picea engelmannii",
              "Picea sitchensis","Picea glauca", "Taxus brevifolia","Chamaecyparis nootkatensis")

Conifer_ranges <- BIEN_ranges_load_species(Conifers)

#this will write the ranges as a singular shapefile in the rawdata folder
st_write(Conifer_ranges, "../Project_LDP2024W1/00_rawdata/Conifer_ranges.shp")
