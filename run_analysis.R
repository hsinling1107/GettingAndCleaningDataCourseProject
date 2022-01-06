
## load required package
library(dplyr)

## ==================== 0. Get data ============================
## 0.1 download and unzip the dataset
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
filename <- "getdata_projectfiles_UCI HAR Dataset.zip"
if (!file.exists(filename)) {
    download.file(fileUrl, filename, method = "curl")
}
if (!file.exists("UCI HAR Dataset")) { 
    unzip(filename) }

## 0.2 load data into R
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")
sub_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
sub_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")

## ====== 1. Merge training and testing data into one data set =========== 
trainData <- cbind(sub_train, y_train, X_train)
testData <- cbind(sub_test, y_test, X_test)
df <- rbind(trainData, testData)

## ====== 2. extract mean and standard deviation of each measurement ======
featureNames <- read.table("./UCI HAR Dataset/features.txt")
featureIdx <- grep("mean|std",featureNames$V2)
df <- df[ , c(1,2,featureIdx+2)]
colnames(df) <- c("subject", "activity", featureNames$V2[featureIdx])

## ====== 3. use descriptive names to name the activities in the dataset ============
#  3.1 load activity data into R
activityName <- read.table("./UCI HAR Dataset/activity_labels.txt")
#  3.2 replace activity name with a descriptive one
df$activity <- case_when(
    df$activity == 1 ~ activityName$V2[1],
    df$activity == 2 ~ activityName$V2[2],
    df$activity == 3 ~ activityName$V2[3],
    df$activity == 4 ~ activityName$V2[4],
    df$activity == 5 ~ activityName$V2[5],
    df$activity == 6 ~ activityName$V2[6],
    TRUE ~ ""
)

## ====== 4. label dataset with descriptive variable names ============
names(df) <- gsub("\\()","",names(df))
names(df) <- gsub("^t","time",names(df))
names(df) <- gsub("^f","frequency",names(df))
names(df) <- gsub("-mean","Mean",names(df))
names(df) <- gsub("-std","Std",names(df))
names(df) <- gsub("Acc","Accelerometer",names(df))
names(df) <- gsub("Gyro","Gyroscope",names(df))
names(df) <- gsub("Mag","Magnitude",names(df))
names(df) <- gsub("(Body){2,}","Body",names(df))

## ====== 5. From the data set in step 4, creates a independent tidy data set 
##   with the average of each variable for each activity and each subject.
groupedData <- df %>%
    group_by(subject, activity) %>%
    summarise_each(funs(mean))
write.table(groupedData,"./UCI HAR Dataset/tidy_data.txt",row.name=FALSE)


