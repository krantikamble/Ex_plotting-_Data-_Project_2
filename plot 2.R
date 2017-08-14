

if(!exists("NEI")){
        NEI <- readRDS("C:/Users/Kranti/Desktop/coursera/summarySCC_PM25.rds")
}
if(!exists("SCC")){
        SCC <- readRDS("C:/Users/Kranti/Desktop/coursera/Source_Classification_Code.rds")
}

require(dplyr)

baltimore<-subset(NEI, NEI$fips==24510)           #Subset Baltimore area
totalBaltimore<-tapply(baltimore$Emissions, INDEX=baltimore$year, sum)   #Sum emissions per year
clrs <- c("red", "green", "blue", "yellow")
barplot(totalBaltimore, main="Total Emissions in Baltimore, MD by Year", xlab="Year", ylab="Emissions",col=clrs)
