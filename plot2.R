## Load data from file if not loaded already
if(!exists("requiredPowerConsumptionData"))
{
  source("read_data.R")
}

complete_date <- strptime(paste(requiredPowerConsumptionData$Date, requiredPowerConsumptionData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 

## plot the data
plot(complete_date, requiredPowerConsumptionData$Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")

## write the plot to plot2.png file
dev.copy(png, file = "plot2.png", width = 480, height = 480)
dev.off()