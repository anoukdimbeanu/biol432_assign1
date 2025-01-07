#read measurements.csv file and load dplyr
library(dplyr)
dat <- read.csv("measurements.csv")

# insert column for volume using mutate function and volume of a cylinder formula
dat<- dat %>% mutate(volume = pi*(Limb_width/2)^2*Limb_length)

write.csv(dat,"measurements.csv",row.names=FALSE)
