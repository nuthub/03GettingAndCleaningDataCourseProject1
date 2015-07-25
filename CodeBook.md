# CodeBook for file `averages.txt`

## The Raw Data

* Original data downloaded from: https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
* Day of download: 2015-07-24
* Refer to archives `README.txt` for more information about the contents of the archive and the experiment these data set comes from.

## The Tidy Aggregated Data

The tidy aggregated data set is contained in the file `averages.txt`, which

* has been created using the function `run_analysis()` in file `run_analysis.R`
* contains *180 observations* (rows) with *68 variables* (columns) each
* is provided in *wide form*
* can be read into R with: 
    ```
    data <- read.table("averages.txt", header = TRUE)
    ```

## The Variables

The variables (columns) of `averages.txt` are (watch also note at the end of this file!):

1. `Subject`: The data set contains observations of 30 *individuals*, each identified by a numeric `[1:30]`.
Class of this variable is `integer`.
2. `Activity`: The observations belong to different *activities*. Observed activities are:
    * LAYING 
    * SITTING 
    * STANDING 
    * WALKING 
    * WALKING_DOWNSTAIRS
    * WALKING_UPSTAIRS.
    
    Class of this variable is `character`.
3. `tBodyAcc-mean()-X`: mean of time series domain, body acceleration signals, mean values of X axis
4. `tBodyAcc-mean()-Y`: mean of time series domain, body acceleration signals, mean values of Y axis
5. `tBodyAcc-mean()-Z`: mean of time series domain, body acceleration signals, mean values of Z axis
6. `tBodyAcc-std()-X`: mean of time series domain, body acceleration signals, standard deviation of X axis
7. `tBodyAcc-std()-Y`: mean of time series domain, body acceleration signals, standard deviation of Y axis
8. `tBodyAcc-std()-Z`: mean of time series domain, body acceleration signals, standard deviation of Z axis
9. `tGravityAcc-mean()-X`: mean of time series domain, gravity acceleration signals, mean values of X axis
10. `tGravityAcc-mean()-Y`: mean of time series domain, gravity acceleration signals, mean values of Y axis
11. `tGravityAcc-mean()-Z`: mean of time series domain, gravity acceleration signals, mean values of Z axis
12. `tGravityAcc-std()-X`: mean of time series domain, gravity acceleration signals, standard deviation of X axis
13. `tGravityAcc-std()-Y`: mean of time series domain, gravity acceleration signals, standard deviation of Y axis
14. `tGravityAcc-std()-Z`: mean of time series domain, gravity acceleration signals, standard deviation of Z axis
15. `tBodyAccJerk-mean()-X`: mean of time series domain, body acceleration signals, derived Jerk signals, mean values of X axis
16. `tBodyAccJerk-mean()-Y`: mean of time series domain, body acceleration signals, derived Jerk signals, mean values of Y axis
17. `tBodyAccJerk-mean()-Z`: mean of time series domain, body acceleration signals, derived Jerk signals, mean values of Z axis
18. `tBodyAccJerk-std()-X`: mean of time series domain, body acceleration signals, derived Jerk signals, standard deviation of X axis
19. `tBodyAccJerk-std()-Y`: mean of time series domain, body acceleration signals, derived Jerk signals, standard deviation of Y axis
20. `tBodyAccJerk-std()-Z`: mean of time series domain, body acceleration signals, derived Jerk signals, standard deviation of Z axis
21. `tBodyGyro-mean()-X`: mean of time series domain, body acceleration signals, Gyro values, mean values of X axis
22. `tBodyGyro-mean()-Y`: mean of time series domain, body acceleration signals, Gyro values, mean values of Y axis
23. `tBodyGyro-mean()-Z`: mean of time series domain, body acceleration signals, Gyro values, mean values of Z axis
24. `tBodyGyro-std()-X`: mean of time series domain, body acceleration signals, Gyro values, standard deviation of X axis
25. `tBodyGyro-std()-Y`: mean of time series domain, body acceleration signals, Gyro values, standard deviation of Y axis
26. `tBodyGyro-std()-Z`: mean of time series domain, body acceleration signals, Gyro values, standard deviation of Z axis
27. `tBodyGyroJerk-mean()-X`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, mean values of X axis
28. `tBodyGyroJerk-mean()-Y`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, mean values of Y axis
29. `tBodyGyroJerk-mean()-Z`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, mean values of Z axis
30. `tBodyGyroJerk-std()-X`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, standard deviation of X axis
31. `tBodyGyroJerk-std()-Y`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, standard deviation of Y axis
32. `tBodyGyroJerk-std()-Z`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, standard deviation of Z axis
33. `tBodyAccMag-mean()`: mean of time series domain, body acceleration signals, calculated magnitudes, mean value
34. `tBodyAccMag-std()`: mean of time series domain, body acceleration signals, calculated magnitudes, standard deviation
35. `tGravityAccMag-mean()`: mean of time series domain, gravity acceleration signals, calculated magnitudes, mean value
36. `tGravityAccMag-std()`: mean of time series domain, gravity acceleration signals, calculated magnitudes, standard deviation
37. `tBodyAccJerkMag-mean()`: mean of time series domain, body acceleration signals, derived Jerk Signals, calculated magnitudes, mean value
38. `tBodyAccJerkMag-std()`: mean of time series domain, body acceleration signals, derived Jerk Signals, calculated magnitudes, standard deviation
39. `tBodyGyroMag-mean()`: mean of time series domain, body acceleration signals, Gyro values, calculated magnitudes, mean value
40. `tBodyGyroMag-std()`: mean of time series domain, body acceleration signals, Gyro values, calculated magnitudes, standard deviation
41. `tBodyGyroJerkMag-mean()`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, calculated magnitudes, mean value
42. `tBodyGyroJerkMag-std()`: mean of time series domain, body acceleration signals, Gyro values, derived Jerk Signals, calculated magnitudes, standard deviation
43. `fBodyAcc-mean()-X`: mean of frequency domain, body acceleration signals, mean values of X axis
44. `fBodyAcc-mean()-Y`: mean of frequency domain, body acceleration signals, mean values of Y axis
45. `fBodyAcc-mean()-Z`: mean of frequency domain, body acceleration signals, mean values of Z axis
46. `fBodyAcc-std()-X`: mean of frequency domain, body acceleration signals, standard deviation of X axis
47. `fBodyAcc-std()-Y`: mean of frequency domain, body acceleration signals, standard deviation of Y axis
48. `fBodyAcc-std()-Z`: mean of frequency domain, body acceleration signals, standard deviation of Z axis
49. `fBodyAccJerk-mean()-X`: mean of frequency domain, body acceleration signals, derived Jerk signals, mean values of X axis
50. `fBodyAccJerk-mean()-Y`: mean of frequency domain, body acceleration signals, derived Jerk signals, mean values of Y axis
51. `fBodyAccJerk-mean()-Z`: mean of frequency domain, body acceleration signals, derived Jerk signals, mean values of Z axis
52. `fBodyAccJerk-std()-X`: mean of frequency domain, body acceleration signals, derived Jerk signals, standard deviation of X axis
53. `fBodyAccJerk-std()-Y`: mean of frequency domain, body acceleration signals, derived Jerk signals, standard deviation of Y axis
54. `fBodyAccJerk-std()-Z`: mean of frequency domain, body acceleration signals, derived Jerk signals, standard deviation of Z axis
55. `fBodyGyro-mean()-X`: mean of frequency domain, body acceleration signals, Gyro values, mean values of X axis
56. `fBodyGyro-mean()-Y`: mean of frequency domain, body acceleration signals, Gyro values, mean values of Y axis
57. `fBodyGyro-mean()-Z`: mean of frequency domain, body acceleration signals, Gyro values, mean values of Z axis
58. `fBodyGyro-std()-X`: mean of frequency domain, body acceleration signals, Gyro values, standard deviation of X axis
59. `fBodyGyro-std()-Y`: mean of frequency domain, body acceleration signals, Gyro values, standard deviation of Y axis
60. `fBodyGyro-std()-Z`: mean of frequency domain, body acceleration signals, Gyro values, standard deviation of Z axis
61. `fBodyAccMag-mean()`: mean of frequency domain, body acceleration signals, calculated magnitudes, mean values
62. `fBodyAccMag-std()`: mean of frequency domain, body acceleration signals, calculated magnitudes, standard deviation
63. `fBodyBodyAccJerkMag-mean()`: mean of frequency domain, body acceleration signals, derived Jerk signals, calculated magnitudes, mean values
64. `fBodyBodyAccJerkMag-std()`: mean of frequency domain, body acceleration signals, derived Jerk signals, calculated magnitudes, standard deviation
65. `fBodyBodyGyroMag-mean()`: mean of frequency domain, body acceleration signals, Gyro values, calculated magnitudes, mean values
66. `fBodyBodyGyroMag-std()`: mean of frequency domain, body acceleration signals, Gyro values, calculated magnitudes, standard deviation
67. `fBodyBodyGyroJerkMag-mean()`: mean of frequency domain, body acceleration signals, Gyro values, derived Jerk signals, calculated magnitudes, mean values
68. `fBodyBodyGyroJerkMag-std()`: mean of frequency domain, body acceleration signals, Gyro values, derived Jerk signals, calculated magnitudes, standard deviation

**Additional Notes for columns 3. - 68.**:

* Contain *mean values by subject and activity* of corresponding original data.
* Only columns containing the Strings `mean()` and `std()` are contained.
* All other variables have been removed, since they were of no interest for this course project.
* Values are normalized and therefore in the range [-1..1].
* For further documentation and information about units of these variables refer to file `features_info.txt` contained in raw data download archive. 
* Some columns are not explicitly documented in `features_info.txt` of original data set.
* Class of these variables is `numeric`.