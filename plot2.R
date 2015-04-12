
# plot2.R 

# Create plot2.png 

png("plot2.png")

plot(dtpower$datetime,dtpower$Global_active_power,type="l"
     ,ylab="Global Active Power(kilowatts)",xlab=" ")

dev.off()