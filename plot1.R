
load("data_subset.RData")

png("plot1.png", width=480, height=480)
hist(as.numeric(data_subset$Global_active_power), col="red",
     main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()
