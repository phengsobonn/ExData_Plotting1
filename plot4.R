
##Read data and subset it
data <- read.csv("household_power_consumption.txt", sep = ";")
date1 <- as.Date("2007-02-01")
date2 <- as.Date("2007-02-02")
data <- data[data$Date >= date1 & data$Date <= date2, ]

##Make graphs of 2*2 by col
par(mfcol = c(2, 2))

##1st graph
plot(as.numeric(data$Global_active_power), type = "o", pch = ".",
	ylab = "Global Active Power (kilowatts)", xlab = "", xaxt = "n")
axis(1, at = 0, labels = "Thu")
axis(1, at = 1450, labels = "Fri")
axis(1, at = 2900, labels = "Sat")

##2nd graph
x1 <- data$Sub_metering_1
x2 <- data$Sub_metering_2
x3 <- data$Sub_metering_3
plot(x1, type = "n", ylab = "Energy sub metering", xlab = "", xaxt = "n")
lines(x1, col = "black")
lines(x2, col = "red")
lines(x3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
	pch = "-", col = c("black", "red", "blue"))
axis(1, at = 0, labels = "Thu")
axis(1, at = 1450, labels = "Fri")
axis(1, at = 2900, labels = "Sat")

##3rd graph
plot(data$Voltage, type = "n", ylab = "Voltage", xaxt = "n", xlab = "datetime")
lines(data$Voltage)
axis(1, at = 0, labels = "Thu")
axis(1, at = 1450, labels = "Fri")
axis(1, at = 2900, labels = "Sat")

##4th graph
plot(data$Global_reactive_power, type = "n", ylab = "Global_reactive_power",
	xaxt = "n", xlab = "datetime")
lines(data$Global_reactive_power)
axis(1, at = 0, labels = "Thu")
axis(1, at = 1450, labels = "Fri")
axis(1, at = 2900, labels = "Sat")

##Save it as png file
dev.copy(png, "plot4.png", width = 480, height = 480, units = "px")
dev.off()


