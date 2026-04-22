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

dji <- rast("dji_fly_20241226_054143_0_1735188103432_photo_low_quality.JPG")
dji <- flip(dji)
plot(dji)

dji <- rast("dji_fly_20241226_054143_0_1735188103432_photo_low_quality.JPG") #to transform the image in a raster
dji <- flip(dji)
plot(dji) #and we have our plot
djic <- im.classify(dji, num_clusters=3)

#classify  mato grosso pictures
m1992 <- im.import("matogrosso_l5_1992219_lrg.jpg")
m2006 <- im.import("matogrosso_ast_2006209_lrg.jpg")
im.multiframe(1,2)

plot(m1992)
plot(m2006)

m1992c <- im.classify(m1992, num_clusters=2, seed=19) #2 clusters because I'm interested in two factors: forest and non forest
m2006c <- im.classify(m2006, num_clusters=2, seed=19)
#1 is forest, 2 is river and human intervention. we want to change the name
# Assign labels
levels(m1992c) <- data.frame(
  value = c(1, 2),
  label = c("forest", "human")

  )
levels(m2006c) <- data.frame(
  value = c(1, 2),
  label = c("forest", "human")

  )
plot(m1992c)
plot(m2006c)
#then we plot again and the two categories are renamed.

#Now I want to calculate the percentages. I need frequencies n.pixels
freq1992 <- freq(m1992c)
perc1992 <- freq1992$count * 100/ ncell(m1992c)


freq2006 <- freq(m2006c)
perc2006 <- freq2006$count * 100/ ncell(m2006c)

#now let's create our table #c is first column #the numbers are the result of our perc function
data.frame(
  class= c("forest", "human"),
  perc1992=c(83,17), 
  perc2006=c(45,55),
  )
