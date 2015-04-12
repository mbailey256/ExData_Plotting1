
# plot1.R  
# Get and filter data and plot first graph. 

# Download and load data into data table dtpower

fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"

download.file(fileUrl,"household_power_consumption.zip",method="curl")

unzip("household_power_consumption.zip")

library(data.table)
dtpower <- data.table(read.csv2("household_power_consumption.txt",dec=".",
                                na.strings = "?"))

# Subset date range and Tidy Data

dtpower <- filter(dtpower,as.Date(dtpower$Date,"%d/%m/%Y") 
                  %between% c("2007-02-01","2007-02-02"))

dtpower <- mutate(dtpower,datetime=as.POSIXct(strptime(paste
                        (dtpower$Date,dtpower$Time),"%d/%m/%Y %H:%M:%S")))

dtpower$Global_active_power <- 
        as.numeric(as.character(dtpower$Global_active_power))

dtpower$Global_reactive_power <- 
        as.numeric(as.character(dtpower$Global_reactive_power))

dtpower$Voltage <- 
        as.numeric(as.character(dtpower$Voltage))

dtpower$Global_intensity <- 
        as.numeric(as.character(dtpower$Global_intensity))

dtpower$Sub_metering_1 <- 
        as.numeric(as.character(dtpower$Sub_metering_1))

dtpower$Sub_metering_2 <- 
        as.numeric(as.character(dtpower$Sub_metering_2))

# Create plot1.png

png("plot1.png")

hist(dtpower$Global_active_power, col="Red",xlab="Global Active Power (kilowatts)"
     ,main="Global Active Power")

dev.off()





