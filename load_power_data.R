library(sqldf)
library(dplyr)
library(lubridate)

if(!file.exists('./data/household_power_consumption.txt')) {
  download.file('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip', './household_power_consumption.zip')
  unzip('./household_power_consumption.zip', exdir='./data')
}

power_data <- read.csv.sql('./data/household_power_consumption.txt', sep=";",
                                 sql = 'select * from file where Date = "1/2/2007" or Date = "2/2/2007"')
power_data <- tbl_df(power_data)

power_data <- power_data %>%
  mutate(Date = dmy(Date)) %>%
  mutate(Time = hms(Time))