alldata <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?")
plotdata=alldata[which(alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007"),]
plotdata$datetime <- strptime(paste(plotdata$Date,plotdata$Time),"%d/%m/%Y %H:%M:%S")
png("plot3.png")
plot(plotdata$datetime, plotdata$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(plotdata$datetime, plotdata$Sub_metering_2, col="red")
lines(plotdata$datetime, plotdata$Sub_metering_3, col="blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
dev.off()
