

if(!exists("NEI")){
        NEI <- readRDS("C:/Users/Kranti/Desktop/coursera/summarySCC_PM25.rds")
}
if(!exists("SCC")){
        SCC <- readRDS("C:/Users/Kranti/Desktop/coursera/Source_Classification_Code.rds")
}

require(dplyr)

baltimore<-subset(NEI, NEI$fips==24510)           #Subset Baltimore area
totalBaltimore<-tapply(baltimore$Emissions, INDEX=baltimore$year, sum)   #Sum emissions per year
png('plot2.png')
barplot(height=totalBaltimorer$Emissions, names.arg=totalBaltimore$year, xlab="years", ylab=expression('total PM'[2.5]*' emission'),main=expression('Total PM'[2.5]*' in the Baltimore City, MD emissions at various years'))
dev.off()

