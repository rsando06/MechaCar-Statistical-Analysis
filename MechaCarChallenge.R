library(dplyr)

# Deliverable 1
# Import the MechaCar csv file
MechaCar <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors=F)

# Perform linear regression on the dataframe
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar)

# Summary for the linear regression model
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD,MechaCar))


# Deliverable 2
# Import the Suspension csv file
Coil <- read.csv(file='Suspension_Coil.csv',check.names=F,stringsAsFactors=F)

# Create total summary dataframe
total_summary <- Coil %>% summarize(Mean=mean(PSI),Mediam=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')

# Create lot summary
lot_summary <- Coil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI),.groups='keep')
