png(filename='./plot3.png', width=480, height=480)
plot(power_data$Date + power_data$Time, power_data$Sub_metering_1, 
     type = 'l',
     xlab = '',
     ylab = 'Energy sub metering')

lines(power_data$Date + power_data$Time, power_data$Sub_metering_2, 
     type = 'l',
     col = 'red')

lines(power_data$Date + power_data$Time, power_data$Sub_metering_3, 
     type = 'l',
     col = 'blue')
legend('topright', 
       c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
       col=c('black', 'red', 'blue'),
       lty=1)
dev.off()