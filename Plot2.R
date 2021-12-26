data <- read.table("household_power_consumption.txt",sep=';',header=TRUE)
data$dandt <- paste(data$Date,data$Time)
data$dandt <- strptime(data$dandt,format="%d/%m/%Y %H:%M:%S")
temp = data[(data$Date=="1/2/2007" | data$Date=="2/2/2007"),]
names(temp)
png(file="plot2.png")
plot(x=temp$dandt,y=as.numeric(temp$Global_active_power),type="S",xlab="Day",ylab="Global Active Power (kilowatts)",col='Black',main="Global Active Power")
dev.off()
