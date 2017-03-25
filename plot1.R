#Setting current working directory
setwd("E:/DataScience/Workspace/ExData_Plotting1")
dataFile <- "household_power_consumption.txt"
strtdt <- "1/2/2007"
enddt <- "2/2/2007"

#Read previously unzipped data file and subsetting
data <- read.table(dataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
subSetData <- data[data$Date %in% c(strtdt,enddt) ,]

#working on subset
globalActivePower <- as.numeric(subSetData$Global_active_power)
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()