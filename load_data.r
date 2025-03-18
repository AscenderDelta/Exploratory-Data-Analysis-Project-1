# Load necessary libraries
library(data.table)

# Read data
file_path <- "household_power_consumption.txt"

# Read data only for the dates 2007-02-01 and 2007-02-02
data <- fread(file_path, na.strings = "?", sep = ";")

# Convert Date column to Date format
data$Date <- as.Date(data$Date, format="%d/%m/%Y")

# Subset for required dates
data_subset <- data[data$Date == "2007-02-01" | data$Date == "2007-02-02",]

# Combine Date and Time into a new datetime column
data_subset$DateTime <- as.POSIXct(paste(data_subset$Date, data_subset$Time), format="%Y-%m-%d %H:%M:%S")

# Save this cleaned dataset for reuse
save(data_subset, file = "data_subset.RData")
