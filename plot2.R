png(filename='./plot2.png', width=480, height=480)
plot(power_data$Date + power_data$Time, power_data$Global_active_power, 
     type = 'l',
     xlab='',
     ylab="Global Active Power (kilowatts)")
dev.off()