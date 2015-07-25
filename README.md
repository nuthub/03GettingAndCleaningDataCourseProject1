# Getting and Cleaning Data: Course Project

This project is submission of Coursera's "Getting and Cleaning Data" Course Project.

## Files and Functions
This repository contains four files:

1. `README.md`: The text you are currently reading.
2. `run_analysis.R`: Contains an R function, `run_analysis()` to read raw data and produce an aggregated and tidy data set.
3. `averages.txt`: The aggregated and tidy data set produced by `run_analysis()`.
4. `CodeBook.md`: The Code Book describing the contents of `averages.txt`.

### README.md
You are currently reading the contents.

### run_analysis.R
The file `run_analysis.R` contains a function `run_analysis()` that does the following:

1. Reads raw data sets, that are contained in a [downloadable archive](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip).
The required files from the unzipped archive are the following:

    * UCI HAR Dataset/train/subject_train.txt
    * UCI HAR Dataset/test/subject_test.txt
    * UCI HAR Dataset/train/y_train.txt
    * UCI HAR Dataset/test/y_test.txt
    * UCI HAR Dataset/train/X_train.txt
    * UCI HAR Dataset/test/X_test.txt
    * UCI HAR Dataset/features.txt
    * UCI HAR Dataset/activity_labels.txt

    **Note**: The function expects the mentioned locations and does not download or extract the files itself.
    Path names are separated by forward slashes (`/`), which might have to be changed to back slashes (`\`) on windows systems.

2. Produces a tidy data set from the raw data files named in step 1.

3. Aggregates the tidy data set from step 2. into a new data set by averaging the data grouped by certain variables.

4. Writes the aggregated data set from step 3. into the file `averages.txt`.

5. Returns the aggregated data set from step 3.


#### Environment
No special packages are required by the function `run_analysis()` in file `run_analysis.R`.

The environment the function has been used with is:

```{r}
> sessionInfo()
R version 3.1.2 (2014-10-31)
Platform: x86_64-pc-linux-gnu (64-bit)

locale:
 [1] LC_CTYPE=de_DE.UTF-8       LC_NUMERIC=C               LC_TIME=de_DE.UTF-8        LC_COLLATE=de_DE.UTF-8    
 [5] LC_MONETARY=de_DE.UTF-8    LC_MESSAGES=de_DE.UTF-8    LC_PAPER=de_DE.UTF-8       LC_NAME=C                 
 [9] LC_ADDRESS=C               LC_TELEPHONE=C             LC_MEASUREMENT=de_DE.UTF-8 LC_IDENTIFICATION=C       

attached base packages:
[1] stats     graphics  grDevices utils     datasets  methods   base     

other attached packages:
[1] pander_0.5.2

loaded via a namespace (and not attached):
[1] digest_0.6.8    htmltools_0.2.6 knitr_1.10.5    Rcpp_0.11.6     rmarkdown_0.7   tools_3.1.2     yaml_2.1.13    
```

####usage:
```
source('run_analysis.R')
averages <- run_analysis()
View(averages)
```

### averages.txt

The file `averages.txt` contains the data set produced by the function `run_analysis()`.
The contents are documented in the file CodeBook.md

### CodeBook.md
Contains information of the contents and variables of file `averages.txt`.

