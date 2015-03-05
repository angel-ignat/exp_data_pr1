#data is fetched in Plot1.R
#Create plot3
plot(data$DateTime, data$Sub_metering_1, type="l", ylab="Global Active Power (kilowatts)", xlab="")
lines(data$DateTime, data$Sub_metering_2, col="Red")
lines(data$DateTime, data$Sub_metering_3, col="Blue")

#add legend
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), cex=0.5, lwd=2, col=c("black", "red", "blue"))

#copy to file
dev.copy(png, file="plot3.png", height=480, width=480)
dev.off()
