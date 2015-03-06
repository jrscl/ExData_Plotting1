alldata <- read.csv("./household_power_consumption.txt", sep=";", na.strings="?")
plotdata=alldata[which(alldata$Date=="1/2/2007" | alldata$Date=="2/2/2007"),]
plotdata$datetime <- strptime(paste(plotdata$Date,plotdata$Time),"%d/%m/%Y %H:%M:%S")
png("plot1.png")
hist(plotdata[,"Global_active_power"], col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
