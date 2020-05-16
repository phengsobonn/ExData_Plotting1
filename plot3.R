
##Read data and subset it
data <- read.csv("household_power_consumption.txt", sep = ";")
date1 <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")
data <- data[data$Date >= date1 & data$Date <= date2, ]

##Make graph
x1 <- data$Sub_metering_1
x2 <- data$Sub_metering_2
x3 <- data$Sub_metering_3
plot(x1, type = "n", ylab = "Energy sub metering", xlab = "", xaxt = "n")
lines(x1, col = "black")
lines(x2, col = "red")
lines(x3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
	pch = "-", col = c("black", "red", "blue"))

##Label x-axis as Thu, Fri and Sat
axis(1, at = 0, labels = "Thu")
axis(1, at = 1450, labels = "Fri")
axis(1, at = 2900, labels = "Sat")

##Save it as png file
dev.copy(png, "plot3.png", width = 480, height = 480, units = "px")
dev.off()