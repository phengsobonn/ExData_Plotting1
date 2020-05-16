
##Read data and subset it
data <- read.csv("household_power_consumption.txt", sep = ";")
date1 <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")
data <- data[data$Date >= date1 & data$Date <= date2, ]

##Make histogram
hist(as.numeric(data$Global_active_power), xlab = "Global Active Power (kilowatts)"
	col = "red", main = "Global Active Power")

##Save it as png file
dev.copy(png, file = "plot1.png", width = 480, height = 480, units = "px")
dev.off()

