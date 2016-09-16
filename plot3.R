
lines <- c("black", "red", "blue")
labels <- c("Sub_metering_1", "Sub_metering_2","Sub_metering_3")
plot(finaldata$settime, finaldata$Sub_metering_1, type ="l", col=lines[1], xlab="", ylab="Energy Sub Metering")
lines(finaldata$settime, finaldata$Sub_metering_2, col=lines[2])
lines(finaldata$settime, finaldata$Sub_metering_3, col=lines[3])
legend("topright", legend = labels, col= lines, lty = "solid")