data_all <- read.table("../household_power_consumption.txt", colClasses=c("character", "character", rep("numeric", 7)), na.strings="?", sep=";", header=TRUE, stringsAsFactors=FALSE)
data = data_all[data_all$Date == "1/2/2007" | data_all$Date == "2/2/2007",]
data$Time <- strptime(paste(data[,1], data[,2]), "%d/%m/%Y %H:%M:%S")

png("plot1.png")
hist(data$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
