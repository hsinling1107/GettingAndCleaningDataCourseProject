# Getting and Cleaning Data Course Assignment : UCI HAR Dataset
## Review Criteria
1. The submitted data set is tidy. 
2. The Github repo contains the required scripts.
3. GitHub contains a code book that modifies and updates the available codebooks with the data to indicate all the variables and summaries calculated, along with units, and any other relevant information.
4. The README that explains the analysis files is clear and understandable.
5. The work submitted for this project is the work of the student who submitted it.

## Description
The goal of this project is to clean and prepare a tidy dataset that can be used for further analysis. The [original dataset](https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip) contain human activity recognition-related measurements collected from Smartphones. Check the CodeBook.md file for more details on the original dataset and well as transformations made to it.

## Files in this repository
1. README.md : Description of the assignment and files contained in project.
2. CodeBook.md : Illustration of all the variables and summaries calculated, along with units, and any other relevant information.
3. run_analysis.R : R code file to manipulate and output the dataset as indicated.
4. tidy_data.txt : Output data.


## run_analysis.R
### step 0. Download the original dataset from the repository and unzip it, load the dataset into R.
### step 1. Merge training data and test data into one dataset.
Create test dataset from subject_test, X_test and y_test, train dataset from subject_train, X_train and y_train. Combine these datasets into one dataset.
### step 2. Extracts only the measurements on the mean and standard deviation for each measurement.
Using grep() to extract variable names which contain "mean" or "std". 
### step 3. Uses descriptive activity names to name the activities in the data set.
Activity names are labeled using the activity_labels.txt file. 
### step 4. Label dataset with descriptive variable names.
Rename variable with descriptive one using gsub().
### step 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
The dataset from step4 is grouped by subject and activity, then summarise the group means.This dataset is export as tidy_data.txt for submission.
