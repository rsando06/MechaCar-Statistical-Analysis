library(dplyr)

# Deliverable 1
# Import the csv file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# Perform linear regression on the dataframe
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar)

# Summary for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar))
