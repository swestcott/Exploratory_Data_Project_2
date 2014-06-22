if(!exists("NEI")) source("load.R")

library('plyr')

# Extract baltimore data
baltimore <- subset(NEI, fips==24510)

# Sum data by year
emissions <- ddply(baltimore, .(year), summarize, total.emissions=sum(Emissions))

png(file="plot2.png")

plot(emissions, main="Emissions from PM[2.5] in the US", xlab="Year", ylab="Total Emissions", col="red")

dev.off()
