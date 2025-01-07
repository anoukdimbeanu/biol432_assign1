#R script 1

#1. Vector with set of 100 species
#First create a vector with species name of my choosing
Species<- c("species1","species2","species3","species4","species5")

#Next create randomly selected species
random<-vector("character",length = 100)

#use for loop to select the 100 species randomly

for(i in 1:100){
  random[i]<-sample(Species,1)
}

print(random)

#2. Vector of 100 values for limb_width
meanwidth<- 2  #Come up with numbers for the distribution
sdwidth<- 0.5
minwidth <- 0.01
maxwidth<-3.28

#rnorm to generate 100 values with a mean of 2 and standard deviation of 0.5
width <- rnorm(100, mean = meanwidth, sdwidth)

#pmax to set parameters with max width of 3.28 and minwidth of 0.01
width<-pmax(minwidth,pmin(maxwidth,width)) 

print(width) 

#3. vector for limb length, repeat steps for limb width 
meanlength<- 10 
sdlength<- 5
minlength <- 0.2
maxlength<-38

length <- rnorm(100, mean = meanlength, sdlength)

length<-pmax(minlength,pmin(maxlength,length)) 

print(length) 

#4 vector of 100 values for Observer, repeat same steps as setting species names
observer<- c("Ryan","Elle","Claire")

names<-vector("character",length = 100)

for(i in 1:100){
  names[i]<-sample(observer,1)
}

print(names)

#5. Combine vectors into a dataframe using the data.frame function
dat <- data.frame(Organism = random, Limb_width = width, Limb_length = length, Observer = names)

print(dat)

#export data into csv file

write.csv(dat,"measurements.csv",row.names=FALSE)

