
electricdata<- read.table("C:/Users/yzc01/Documents/exdata%2Fdata%2Fhousehold_power_consumption/household_power_consumption.txt", 
                          header =T, sep=";", na.strings = "?")
finaldata<- electricdata[electricdata$Date %in% c("1/2/2007","2/2/2007"),]
time1<- paste(finaldata$Date, finaldata$Time, sep="")
settime <- strptime(time1,"%d/%m/%Y %H:%M:%S")
finaldata <- cbind(settime, finaldata)
hist(finaldata$Global_active_power, col  ="red", main ="Globale Active Power", xlab="Global Active Power(kilowatts)")