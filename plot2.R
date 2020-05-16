
##Read data and subset it
data <- read.csv("household_power_consumption.txt", sep = ";")
date1 <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")
data <- data[data$Date >= date1 & data$Date <= date2, ]

##Make graph
plot(as.numeric(data$Global_active_power), type = "o", pch = ".",
	ylab = "Global Active Power (kilowatts)", xlab = "", xaxt = "n")

##Label x-axis as Thu, Fri and Sat
axis(1, at = 0, labels = "Thu")
axis(1, at = 1450, labels = "Fri")
axis(1, at = 2900, labels = "Sat")

##Save it as png file
dev.copy(png, "plot2.png", width = 480, height = 480, units = "px")
dev.off()