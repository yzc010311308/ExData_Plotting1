
lines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
par(mfrow=c(2,2))
plot(finaldata$settime, finaldata$Global_active_power, type="l", col = "green", xlab="", ylab="Global Active Power")
plot(finaldata$settime, finaldata$Voltage, type="l", col = "blue", xlab="datetime",ylab="Voltage")
plot(finaldata$settime, finaldata$Sub_metering_1, type="l", xlab="", ylab="Energy Sub Metering")
lines(finaldata$settime, finaldata$Sub_metering_2, type="l", col = "red")
lines(finaldata$settime, finaldata$Sub_metering_3, type = "l", col = "blue")
legend("topright", bty= "n", legend=labels, lty="solid", col=lines)
plot(finaldata$settime, finaldata$Global_reactive_power, type = "l", col = "black", xlab="datetime", ylab="Global Active Power")