load("data_subset.RData")

png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

plot(data_subset$DateTime, as.numeric(data_subset$Global_active_power), 
     type="l", xlab="", ylab="Global Active Power")

plot(data_subset$DateTime, as.numeric(data_subset$Voltage), 
     type="l", xlab="datetime", ylab="Voltage")

plot(data_subset$DateTime, as.numeric(data_subset$Sub_metering_1), type="l", col="black",
     xlab="", ylab="Energy Sub Metering")
lines(data_subset$DateTime, as.numeric(data_subset$Sub_metering_2), col="red")
lines(data_subset$DateTime, as.numeric(data_subset$Sub_metering_3), col="blue")
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       col=c("black", "red", "blue"), lty=1, bty="n")

plot(data_subset$DateTime, as.numeric(data_subset$Global_reactive_power), 
     type="l", xlab="datetime", ylab="Global Reactive Power")

dev.off()
