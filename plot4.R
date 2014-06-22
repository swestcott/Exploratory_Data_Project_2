if(!exists("NEI")) source("load.R")

library('plyr')

# Merge on SCC column
merged <- merge(NEI, SCC)

# Extract coal fueled sources
coal <- merged[grepl("Coal", merged$EI.Sector, ignore.case=T), ]

# Sum data by year, type
emissions <- ddply(coal, .(year), summarize, total.emissions=sum(Emissions))

png(file="plot4.png")

plot(emissions, main="Emissions from coal combustion-related sources", xlab="Year", ylab="Total Emissions", col="red")

dev.off()
