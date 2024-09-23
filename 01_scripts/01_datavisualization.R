library(ggplot2)
library(ggpubr)

crabs <- read.csv('../Project_LDP2024W1/00_rawdata/crabs_measurements.csv')

#initialize 
pdf(file = "../Project_LDP2024W1/03_figures/histograms.pdf", 
    width = 4, height = 4)
#quick look at the distribution of some of the variables
hist_FL <- ggplot(crabs) +
  geom_histogram(mapping = aes(FL), binwidth = 1, fill = "steelblue")

hist_CL <- ggplot(crabs) +
  geom_histogram(mapping = aes(CL), binwidth = 1, fill = "orange")

hist_BD <- ggplot(crabs) +
  geom_histogram(mapping = aes(BD), binwidth = 1, fill = "purple")

#arrange them as a single plot and export to the figures folder

ggarrange(hist_FL, hist_CL, hist_BD, labels = c("A", "B", "C"), 
                        ncol = 2, nrow = 2)
dev.off()

