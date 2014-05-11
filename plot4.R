png("plot4.png")
par(mfrow = c(2, 2))

plot(data$Global_active_power, type="l", xaxt = "n", main="", xlab="", ylab="Global Active Power (kilowatts)")
at <- seq(1, length(data[,2]) + 1, by = 24 * 60)
labels <- seq(from = data[at[1],2], by = "day", length.out = length(at))
axis(side = 1, at = at, labels = format(labels, format = "%a"))

plot(data$Voltage, type="l", xaxt = "n", main="", xlab="datetime", ylab="Voltage")
at <- seq(1, length(data[,2]) + 1, by = 24 * 60)
labels <- seq(from = data[at[1],2], by = "day", length.out = length(at))
axis(side = 1, at = at, labels = format(labels, format = "%a"))

plot(data$Sub_metering_1, type="l", xaxt = "n", main="", ylab="Energy sub metering")
lines(data$Sub_metering_2, col = "red")
lines(data$Sub_metering_3, col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1,1,1), col=c("black", "red", "blue"))
at <- seq(1, length(data[,2]) + 1, by = 24 * 60)
labels <- seq(from = data[at[1],2], by = "day", length.out = length(at))
axis(side = 1, at = at, labels = format(labels, format = "%a"))

plot(data$Global_reactive_power, type="l", xaxt = "n", main="", xlab="datetime", ylab="Global_Reactive_Power")
at <- seq(1, length(data[,2]) + 1, by = 24 * 60)
labels <- seq(from = data[at[1],2], by = "day", length.out = length(at))
axis(side = 1, at = at, labels = format(labels, format = "%a"))

par(mfrow = c(1, 1))
dev.off()
