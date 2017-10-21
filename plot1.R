# Uncomment section if data is not already loaded.
# This project uses an unnecessarily large dataset to practice very simple concepts.
# library(data.table)
# df = fread(
#     'household_power_consumption.txt',
#     na.strings = '?',
#     sep = ";",
#     header = FALSE,
#     col.names = unlist(fread('household_power_consumption.txt', nrow = 1, sep = ';', header = FALSE)),
#     skip = '1/2/2007',
#     nrow = 2879
# )
# df = cbind(DateTime = strptime(paste(df$Date, df$Time), '%d/%m/%Y %H:%M:%S'), df)[, -c(2,3)]
# End comment section

png('plot1.png')
hist(df$Global_active_power, xlab = 'Global Active Power (kilowatts)', col = 'red', main = 'Global Active Power')
dev.off()