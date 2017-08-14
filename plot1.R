
## This first line will likely take a few seconds. Be patient!
if(!exists("NEI")){
        NEI <- readRDS("C:/Users/Kranti/Desktop/coursera/summarySCC_PM25.rds")
}
if(!exists("SCC")){
        SCC <- readRDS("C:/Users/Kranti/Desktop/coursera/Source_Classification_Code.rds")
}

require(dplyr)

total.emissions <- summarise(group_by(NEI, year), Emissions=sum(Emissions))
clrs <- c("red", "green", "blue", "yellow")
barplot(height=total.emissions$Emissions/1000, names.arg=total.emissions$year,
            xlab="years", ylab=expression('total PM'[2.5]*' emission in kilotons'),ylim=c(0,8000),
            main=expression('Total PM'[2.5]*' emissions at various years in kilotons'),col=clrs)
