library(ggplot2)
library(ggpubr)

#read in our data
crabs <- read.csv('../Project_LDP2024W1/00_rawdata/crabs_measurements.csv')

#initialize the download for the histogram plot if you would like to re-export it as a PDF
#I have the pdf download saved as comments since the figure already exists in the directory so
#no need to create it as a pdf again
#pdf(file = "../Project_LDP2024W1/03_figures/histograms.pdf", width = 4, height = 4)

#quick look at the distribution of some of the variables
hist_FL <- ggplot(crabs) +
  geom_histogram(mapping = aes(FL), binwidth = 1, fill = "steelblue")

hist_CL <- ggplot(crabs) +
  geom_histogram(mapping = aes(CL), binwidth = 1, fill = "orange")

hist_BD <- ggplot(crabs) +
  geom_histogram(mapping = aes(BD), binwidth = 1, fill = "purple")

#initialize the download for the histogram plot if you would like to re-export it as a PDF
#I have the pdf download saved as comments since the figure already exists in the directory so no need to create it as a pdf again
#pdf(file = "../Project_LDP2024W1/03_figures/histograms.pdf", width = 4, height = 4)

#arrange them as a single plot and export to the figures folder
ggarrange(hist_FL, hist_CL, hist_BD, labels = c("A", "B", "C"), 
                        ncol = 2, nrow = 2)

#tell R that the code result we want to export as a pdf is finished
#dev.off()

