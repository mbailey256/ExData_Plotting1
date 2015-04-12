
# plot3.R

# Create plot3.png 

png("plot3.png")

with(dtpower, plot(datetime,Sub_metering_1,type="l"
                   ,xlab=" " ,ylab="Energy sub metering"))

with(dtpower,lines(datetime,Sub_metering_2,col="red"))
with(dtpower,lines(datetime,Sub_metering_3,col="blue"))

legend("topright",lty=1,col=c("black","red","blue"),legend=c("Sub_metering_1",
                                             "Sub_metering_2","Sub_metering_3"))

dev.off()