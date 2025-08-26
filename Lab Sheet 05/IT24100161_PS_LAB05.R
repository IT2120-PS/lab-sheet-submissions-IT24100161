setwd("C:/Users/ASUS/OneDrive/Desktop/IT24100161_PS_LAB05")
getwd()

#01
Delivery_Times <- read.table("Exercise - Lab 05.txt", header = TRUE)
head(Delivery_Times)
attach(Delivery_Times)

#02
breaks <- seq(20, 70, by = (70 - 20) / 9)
hist(Delivery_Time_.minutes., main = "Delivery Time(Minutes)", breaks = breaks, right = TRUE)


#04
freq_table <- hist(Delivery_Time_.minutes., breaks = breaks)
cum_freq <- cumsum(freq_table$counts)

plot(freq_table$mids, cum_freq, type = "o", 
     main = "Cumulative Frequency Polygon", 
     xlab = "Delivery Time", 
     ylab = "Cumulative Frequency")





















