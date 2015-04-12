# Loading dplyr package
library(dplyr)
data <-  read.table("household_power_consumption.txt", header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
DataDf <- tbl_df(data)
DataReq <-  filter(DataDf, Date == "1/2/2007" | Date == "2/2/2007")
png("plot1.png", width = 480, height = 480)
hist(as.numeric(DataReq$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power (kilowatts)" )
dev.off()
