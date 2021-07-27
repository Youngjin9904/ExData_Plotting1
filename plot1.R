png("plot1.png")
proj <- read.delim("household_power_consumption.txt", header=T, sep=";",na.strings="?")
dim(proj)
data <- proj[proj$Date %in% c("1/2/2007","2/2/2007"),]
Time <- strptime(paste(data$Date, data$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
data <- cbind(Time, data)
hist(data$Global_active_power, col="red", xlab="Global Active Power (kilowatts)",main="Global Active Power")
dev.off()
