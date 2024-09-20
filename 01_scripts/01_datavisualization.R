library(ggplot2)
crabs <- read.csv('../Project_LDP2024W1/00_rawdata/crabs_measurements.csv')

ggplot() +
  geom_boxplot(data = crabs, mapping = aes(sp, CW, 
                             xlab = "species", ylab = "carapace width (mm)"))
