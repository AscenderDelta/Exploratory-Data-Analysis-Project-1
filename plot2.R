
load("data_subset.RData")

png("plot2.png", width=480, height=480)
plot(data_subset$DateTime, as.numeric(data_subset$Global_active_power), 
     type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()
