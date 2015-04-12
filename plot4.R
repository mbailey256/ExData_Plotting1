
# plot4.R

# Create plot4.png

png("plot4.png")

par(mfcol=c(2,2))

## graph 1
plot(dtpower$datetime,dtpower$Global_active_power,type="l"
     ,ylab="Global Active Power",xlab=" ")

## graph 2
with(dtpower, plot(datetime,Sub_metering_1,type="l"
                   ,xlab=" " ,ylab="Energy sub metering"))

with(dtpower,lines(datetime,Sub_metering_2,col="red"))
with(dtpower,lines(datetime,Sub_metering_3,col="blue"))

legend("topright",bty="n",lty=1,col=c("black","red","blue"),
       legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

## graph 3
with(dtpower, plot(datetime,Voltage,type="l"))

## graph 4 
with(dtpower, plot(datetime,Global_reactive_power,type="l"))

## Close file
dev.off()