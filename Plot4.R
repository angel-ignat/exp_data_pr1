#data is fetched in Plot1.R
#Create plot4
par(mfrow=c(2,2), mar=c(4,4,2,1))
plot(data$DateTime, data$Global_active_power, type="l",
ylab="Global Active Power (kilowatts)", xlab="")
plot(data$DateTime, data$Voltage, type="l",
ylab="Voltage (volt)", xlab="datetime")
plot(data$DateTime, data$Sub_metering_1, type="l",
ylab="Global Active Power (kilowatts)", xlab="")
lines(data$DateTime, data$Sub_metering_2,col='Red')
lines(data$DateTime, data$Sub_metering_3,col='Blue')
#did not succeed to fix legend to be shown appropriately

plot(data$DateTime, data$Global_reactive_power, type="l",
ylab="Global Rective Power (kilowatts)",xlab="datetime")

#copy to file
dev.copy(png, file="plot4.png", height=480, width=480)
dev.off()
