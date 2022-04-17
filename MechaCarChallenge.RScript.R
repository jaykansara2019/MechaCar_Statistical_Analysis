#Use the library() function to load the dplyr package
library(dplyr)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_data <- read.csv('MechaCar_mpg.csv')

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data) #create linear model

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data)) #summarize linear model