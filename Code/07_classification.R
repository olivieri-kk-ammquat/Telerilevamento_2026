#R code to classify images

library(terra)  #needed packages
library(imageRy)

im.list() #list of needed files, select solar orbiter -satellite aquiring data on the Sun. the one we have has already been processed

sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg") #to import the image
sun <- im.import("Solar_Orbiter_s_first_views_of_the_Sun_pillars.jpg")

sunc <- im.classify(sun, num_clusters=3) 
sunc <- im.classify(sun, num_clusters=3, seed=19) #seed selects an iteration 

#try again with another image
can <- im.import("dolansprings_oli_2013088_canyon_lrg.jpg") #classify in three/four groups: there can be rocks, water, ground etc. so we add a 4 to the num clusters
canc <- im.classify(can,num_clusters=4, seed=19)

#we try now to classify a random image from the web
setwd("C:/Users/Utente/Desktop") 
getwd() #to remind you which directory you chose
list.files()
dji <- rast("dji_fly_20241226_054143_0_1735188103432_photo_low_quality.JPG") #to transform the image in a raster
dji <- flip(dji)
