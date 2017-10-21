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

png('plot3.png')
plot(df$DateTime, df$Sub_metering_1, xlab = '', ylab = 'Energy sub metering', type = 'n')
lines(df$DateTime,df$Sub_metering_1)
lines(df$DateTime,df$Sub_metering_2, col = 'red')
lines(df$DateTime,df$Sub_metering_3, col = 'blue')
legend('topright', legend = names(df)[6:8], col = c('black', 'red', 'blue'), lty = 1)
dev.off()