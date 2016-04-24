
## Assignment needs "household_power_consumption.txt" files at root of the working directory

## Read the data from the given CSV file.
powerConsumptionData <- read.table("./household_power_consumption.txt", header = T, sep = ";", na.strings = "?")

## Extract only the 1/2/2007-2/2/2007 from the table as they are only required
requiredPowerConsumptionData <- powerConsumptionData[powerConsumptionData$Date %in% c("1/2/2007","2/2/2007") ,]