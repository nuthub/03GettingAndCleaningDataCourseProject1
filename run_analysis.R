#' ---
#'   title: "Getting and Cleaning Data: Course Project"
#'   author: "Julian Flake"
#'   output: pdf_document
#' ---
#' You should create one R script called run_analysis.R that does the following.
#'
#' Check if data directory exists
if (!file.exists("UCI HAR Dataset")) {
  print(
    "Directory 'UCI HAR Dataset' not found, download and extract the data archive or change to correct directory (parent of 'UCI HAR Dataset)!"
  )
  quit()
}

#' 1. Merges the training and the test sets to create one data set.
data <- rbind(
  read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE),
  read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
)

#' 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#'
# select only relevant columns, that are those ending with 'std()' and 'mean()':
features <-
  as.character(read.table("UCI HAR Dataset/features.txt")$V2)
data <- data[grep("std\\(\\)|mean\\(\\)", features)]

#' 3. Uses descriptive activity names to name the activities in the data set
#'
#' Load the activities of the data sets
activities = rbind(
  read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE),
  read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)
)
#' Load the activity labels
activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
#' Add activity labels and codes
data <-cbind(
  Activity = activityLabels[activities$V1,2], 
  # ActivityNum = activities$V1, 
  data
)

#' 4. Appropriately labels the data set with descriptive variable names.
#'
#' Again, select only relevant labels (those ending with 'std()' or 'mean()'):
names(data) <- c("Activity",
                 # "ActivityNum",
                 features[grep("std\\(\\)|mean\\(\\)", features)])

#' 5. From the data set in step 4, creates a second, independent tidy data set with
#' the average of each variable for each activity and each subject.
#'
#' Load and join subject vectors
subjects <- rbind(
  read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE),
  read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
)
#' Add Subjects to original data set
data2 <- cbind(subjects, data)
#' Label the new subject variable
names(data2)[1] <- "Subject"
#' Compute means grouped by subject and activity and save them to an object named 'averages'
averages <- aggregate(
  x = data2[,features[grep("std\\(\\)|mean\\(\\)", features)]],
  by = list(Subject = data2$Subject, Activity = data2$Activity),
  FUN = mean
)
#' Write the averages to a file, as requested by the course project description:
write.table(file = "averages.txt", x = averages, row.name = FALSE)
