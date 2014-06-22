if(!exists("NEI")) source("load.R")

library('plyr')

png(file="plot1.png")

# Sum data by year
emissions <- ddply(NEI, .(year), summarize, total.emissions=sum(Emissions))

plot(emissions, main="Emissions from PM[2.5] in the US", xlab="Year", ylab="Total Emissions", col="red")

dev.off()
