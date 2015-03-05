#download data
url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile="data.zip")
unzip("data.zip"")
data <- read.csv(household_power_consumption.txt", sep=';', na.strings="?",nrows=2075259)

# convert Date coumn to Date type
data$Date<-as.Date(data$Date)

# extract only needed data
data <- data[data$Date >= "2007-02-01" & data$Date <= "2007-02-02",]


# Create plot 1
hist(data$Global_active_power, main="Global Active Power (kilowatts)",
xlab="Global Active Power (kilowatts)", col="Red")
# Save to file
dev.copy(png, file="plot1.png", height=480, width=480)
dev.off()

#Merge Data and Time in one column
data$DateTime<-strptime(paste(data$Date,data$Time), "%Y-%m-%d %H:%M:%S")
