# Install plyr, if necessary
if(!'plyr2' %in% rownames(installed.packages())) {
  install.packages('plyr')
}

# Install plyr, if necessary
if(!'ggplot2' %in% rownames(installed.packages())) {
  install.packages('ggplot2')
}

# Load datasets
NEI <- readRDS("./data/summarySCC_PM25.rds")
SCC <- readRDS("./data/Source_Classification_Code.rds")