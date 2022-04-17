
#Deliverable 1

#Use the library() function to load the dplyr package
library(dplyr)
library(tidyverse)

#Import and read in the MechaCar_mpg.csv file as a dataframe
MechaCar_data <- read.csv('MechaCar_mpg.csv')

#Perform linear regression using the lm() function. 
#In the lm() function, pass in all six variables (i.e., columns), and add the dataframe you created in Step 4 as the data parameter.

model <- lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=MechaCar_data) #create linear model

#Using the summary() function, determine the p-value and the r-squared value for the linear regression model.
summary(model) #summarize linear model

#Deliverable 2
#Import and read in the Suspension_Coil.csv file as a table
SuspensionCoil_data <- read.csv('Suspension_Coil.csv')

#Write an RScript that creates a total_summary dataframe using the summarize() function to get the mean, median, variance, and standard deviation of the suspension coil’s PSI column
total_summary <- SuspensionCoil_data %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')

#Write an RScript that creates a lot_summary dataframe using the group_by() and the summarize() functions to group each manufacturing lot by the mean, median, variance, and standard deviation of the suspension coil’s PSI column.
lot_summary <- SuspensionCoil_data %>% group_by(Manufacturing_Lot) %>% summarize(Mean_PSI=mean(PSI),Median_PSI=median(PSI),Variance_PSI=var(PSI),SD_PSI=sd(PSI), .groups = 'keep')

#Deliverable 3
#Write an RScript using the t.test() function to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

t.test((SuspensionCoil_data$PSI),mu=1500)


#Next, write three more RScripts in your MechaCarChallenge.RScript using the t.test() function and its subset() argument to determine if the PSI for each manufacturing lot is statistically different from the population mean of 1,500 pounds per square inch.
t.test(subset(SuspensionCoil_data,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(SuspensionCoil_data,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(SuspensionCoil_data,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)





