#data is fetched in Plot1.R
#Create plot2
locale=Sys.getlocale("LC_TIME")
Sys.setlocale("LC_TIME", "C")
plot(data$DateTime, data$Global_active_power, type="l",
 ylab="Global Active Power (kilowatts)", xlab="")
 
#Save to file
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
