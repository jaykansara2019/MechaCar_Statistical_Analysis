# **MechaCar_Statistical_Analysis**

## **Deliverable 1, Linear Regression to Predict MPG**

In this deliverable, we have been given the MechaCar_mpg.csv dataset containing Miles Per Gallon (mpg) test results for 50 prototype MechaCars. The MechaCar prototypes were produced using multiple design specifications to identify ideal vehicle performance. For each vehicle, multiple metrics, such as vehicle length, vehicle weight, spoiler angle, drivetrain, and ground clearance, were collected. We have designed a linear model that predicts the mpg of MechaCar prototypes using several variables from the MechaCar_mpg.csv file. The results of the linear model are depicted below:

![](https://github.com/jaykansara2019/MechaCar_Statistical_Analysis/blob/a4f46f5f09a3c0aaf19f5f5a83d335d77e713d4c/Linear%20model%20(Deliverable%201).png)

- ***Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?***
If we set our null hypothesis as a 'factor' that has a significant impact on mpg. Based on the p-value for each factor. Vehicle length and ground clearance have no significant impact on mpg. On the other hand, the vehicle weight, spoiler angle and All Wheel Drive (AWD) have a non-random variance. All three factors have a significant impact on mpg since their p-values exceed 0.05.


- ***Is the slope of the linear model considered to be zero? Why or why not?***
The slope of a linear model does consider to be near to or equal to 0 in this case since 3 out of 5 factors in this model do have a significant impact on mpg.


- ***Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?***
Yes, the linear model does predict the mpg of MechaCar prototypes, effectively considering the p-values of each variable.

## ***Deliverable 2, Summary Statistics on Suspension Coils***

We have been given the MechaCar Suspension_Coil.csv dataset containing results from multiple production lots. This dataset tested the weight capacities of multiple suspension coils to determine if the manufacturing process is consistent across production lots. Using R, we have created summary statistics for all the combined lots and each individual lot.

The summary of all the lots combined has been depicted below:

![](https://github.com/jaykansara2019/MechaCar_Statistical_Analysis/blob/a4f46f5f09a3c0aaf19f5f5a83d335d77e713d4c/Summary%20table.png)

As per the instructions, the design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Therefore, the average variance of all lot numbers combined falls below 100, which might give an impression that all lots are within the acceptable range. However, as shown below, when the summary statistics were performed for each lot individually, we found out that lot 1 and lot 2 variance is within the range. However, lot 3 falls outside the acceptable variance range of below 100.

![](https://github.com/jaykansara2019/MechaCar_Statistical_Analysis/blob/a4f46f5f09a3c0aaf19f5f5a83d335d77e713d4c/Lot%20table.png)

## ***Deliverable 3, T-Tests on Suspension Coils***
In this deliverable, t-tests were performed to determine if all manufacturing lots and each lot individually are statistically different from the population mean of 1,500 pounds per square inch.

Considering the standard significance level of 0.05, when the t-test was performed for all the lot numbers combined, it showed within the acceptable range. This was concluded based on the p-value being higher than 0.05. Although the t-test was performed for individual lots, it was found that lot 3 is not within the acceptable range since the p-value is 0.04 and the t value is not equal to 0. For lot 1 and lot 2, the t value is 0 and near to 0.

![](https://github.com/jaykansara2019/MechaCar_Statistical_Analysis/blob/a4f46f5f09a3c0aaf19f5f5a83d335d77e713d4c/PSI%20across%20all%20manufacturing%20lots.png)

![](https://github.com/jaykansara2019/MechaCar_Statistical_Analysis/blob/a4f46f5f09a3c0aaf19f5f5a83d335d77e713d4c/PSI%20for%20each%20lot%20individually.png)


## ***Deliverable 4, Study Design: MechaCar vs Competition***

Scope: Design a statistical study to compare the performance of the MechaCar vehicles against the performance of vehicles from other manufacturers.

The best way to compare the mechaCar prototype data performance with the other manufacturers would be by doing an A/B test. Here we will consider the MechaCar data as an experimental group and the other manufacturer's data as a control group. To be more specific, we would be using the two-sample t-test.

- What metric or metrics are you going to test?
We will test two parameters: Miles per Gallon (mpg) and vehicle weight. 

- What is the null hypothesis or alternative hypothesis?

Null Hypothesis: MechaCar would perform equal to or better than the competitive manufacturer car.

Alternative Hypothesis: MechaCar would <ins>not</ins> be performing as equal to or better than the competitive manufacturer car.

- What data is needed to run the statistical test?
We would need mpg and vehicle weight data for MechaCar and other cars. We would be separately performing two-sample t-tests with these data. 

- How do we conclude the results?
Considering the significant level of 0.05, if our p-value for the two-sample t-test falls higher than or equal to 0.05, we fail to reject the null hypothesis. Although, if the p-value is lower than 0.05, we will reject the null hypothesis. In that case, our prototype car will be proven not to be performing equal to or better than other manufacturers' cars.



