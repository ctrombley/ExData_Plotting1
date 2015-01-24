source('load_power_data.R')

png(filename='./plot4.png', width=480, height=480)
par(mfrow=c(2,2))
with(power_data, {
  plot(Date + Time, Global_active_power, 
       type = 'l',
       xlab='',
       ylab="Global Active Power")
  
  plot(Date + Time, Voltage, 
       type = 'l',
       xlab='datetime',
       ylab='Voltage')
  
  plot(Date + Time, Sub_metering_1, 
       type = 'l',
       xlab = '',
       ylab = 'Energy sub metering')
  
  lines(Date + Time, Sub_metering_2, 
        type = 'l',
        col = 'red')
  
  lines(Date + Time, Sub_metering_3, 
        type = 'l',
        col = 'blue')
  
  legend('topright', 
         c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), 
         col=c('black', 'red', 'blue'),
         lty=1,
         bty='n')
  
  plot(Date + Time, Global_reactive_power, 
       type = 'l',
       xlab='datetime',
       ylab='Global_reactive_power')
})

dev.off()