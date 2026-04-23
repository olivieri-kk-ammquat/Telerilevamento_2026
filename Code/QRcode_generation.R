
#add qrcode package
install.packages("qrcode")
library(qrcode)

#to add the qr code 
url <- "https://github.com/olivieri-kk-ammquat"
 
qr <- qr_code(url)

#how to save the qr, the dimensions must be even so to create a square
#set a directory
setwd("C:/Users/Utente/Desktop") 
png("github_profile_qr.png", width = 1000, height = 1000)
plot(qr)
dev.off()
