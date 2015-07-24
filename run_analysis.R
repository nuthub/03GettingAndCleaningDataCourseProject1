#' ---
#'   title: 'Getting and Cleaning data: Course Project'
#'   output: pdf_document
#' ---
#'
#' You should create one R script called run_analysis.R that does the following.
#'
#' 1. Merges the training and the test sets to create one data set.
#' 2. Extracts only the measurements on the mean and standard deviation for each measurement.
#' 3. Uses descriptive activity names to name the activities in the data set
#' 4. Appropriately labels the data set with descriptive variable names.
#' 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
#' 
#' 
#' # First data set
#' 
#' ## Read data
data <- cbind (
  # Subjects
  rbind(
    read.csv("UCI HAR Dataset/train/subject_train.txt", header = FALSE),
    read.csv("UCI HAR Dataset/test/subject_test.txt", header = FALSE)
  ),
  # Activities
  rbind(
    read.csv("UCI HAR Dataset/train/y_train.txt", header = FALSE),
    read.csv("UCI HAR Dataset/test/y_test.txt", header = FALSE)
  ),
  # Values
  rbind(
    read.table("UCI HAR Dataset/train/X_train.txt", header = FALSE),
    read.table("UCI HAR Dataset/test/X_test.txt", header = FALSE)
  )
)

#' ## Tidy Data
# label the variables
names(data) <-
  c("Subject", "Activity", as.character(read.table("UCI HAR Dataset/features.txt")$V2))
# Translate Activity nums to descriptive values
data$Activity <- with(data, {
  activityLabels <- read.table("UCI HAR Dataset/activity_labels.txt")
  activityLabels[Activity,2]
})
# remove columns that we are not interested in (we do need 1,2 for Subject and Activity)
data <- data[c(1,2,grep("std\\(\\)|mean\\(\\)", colnames(data)))]

#' # Second data set
# Compute means grouped by subject and activity and save them to an object named 'averages'
averages <-
  aggregate(
    data[3:68], by = list(Subject = data$Subject, Activity = data$Activity), FUN = mean
  )
# Write the averages to a file, as requested by the course project description:
write.table(file = "averages.txt", x = averages, row.name = FALSE)
