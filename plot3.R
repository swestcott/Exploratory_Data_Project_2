if(!exists("NEI")) source("load.R")

library('plyr')
library('ggplot2')

# Extract baltimore data
baltimore <- subset(NEI, fips==24510)

# Sum data by year, type
emissions <- ddply(baltimore, .(year, type), summarize, total.emissions=sum(Emissions))

png(file="plot3.png")

ggplot(emissions, aes(year, total.emissions)) +
  geom_point() +
  facet_grid(. ~ type) +
  geom_smooth(method="lm") +
  labs(title="Emissions by type from PM[2.5] for Baltimore City")

dev.off()
