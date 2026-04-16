
library(terra) #to import

setwd("C:/Users/Utente/Desktop") #cartella di riferimento

getwd()
list.files()

richat <- rast("richatstructure_oli_20260306.jpg")
richat <- flip(richat)
plot(richat)

png("figura.png")
plot(richat)
dev.off()

png("bande.png")
im.multiframe(2,1)
plot(richat[[1]])
plost(richat[[2]])
dev.off()
-----------

