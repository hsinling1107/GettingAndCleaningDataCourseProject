# UCI HAR Dataset

## **Dataset content**
### Subject : 
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The integer subject ID.
### Activity :
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Activity categories
which each measurements belongs to.
1. Walking
2. Walking Upstairs
3. Walking Downstairs
4. Sitting
5. Standing
6. Laying

### Measurement Variables
<details><summary>Click to see variables descriptions</summary>
<p>
<br />


**Time domain body acceleration mean/std along X, Y, and Z:**<br />
timeBodyAccelerometerMean-X<br />
timeBodyAccelerometerMean-Y<br />
timeBodyAccelerometerMean-Z<br />
timeBodyAccelerometerStd-X<br />
timeBodyAccelerometerStd-Y<br />
timeBodyAccelerometerStd-Z

**Time domain gravity acceleration mean/std along X, Y, and Z:**<br />
timeGravityAccelerometerMean-X<br /> timeGravityAccelerometerMean-Y<br />
timeGravityAccelerometerMean-Z<br /> timeGravityAccelerometerStd-X<br />
timeGravityAccelerometerStd-Y<br /> timeGravityAccelerometerStd-Z

**Time domain body acceleration jerk mean/std along X, Y, and Z:**<br />
timeBodyAccelerometerJerkMean-X<br /> timeBodyAccelerometerJerkMean-Y<br />
timeBodyAccelerometerJerkMean-Z<br /> timeBodyAccelerometerJerkStd-X<br />
timeBodyAccelerometerJerkStd-Y<br />
timeBodyAccelerometerJerkStd-Z

**Time domain body gyroscope mean/std along X, Y, and Z:**<br />
timeBodyGyroscopeMean-X<br />
timeBodyGyroscopeMean-Y<br />
timeBodyGyroscopeMean-Z<br />
timeBodyGyroscopeStd-X<br />
timeBodyGyroscopeStd-Y<br />
timeBodyGyroscopeStd-Z

**Time domain body gyroscope jerk mean/std along X, Y, and Z:**<br />
timeBodyGyroscopeJerkMean-X<br />
timeBodyGyroscopeJerkMean-Y<br />
timeBodyGyroscopeJerkMean-Z<br />
timeBodyGyroscopeJerkStd-X<br />
timeBodyGyroscopeJerkStd-Y<br />
timeBodyGyroscopeJerkStd-Z

**Time domain body acceleration magnitude mean/std :**<br />
timeBodyAccelerometerMagnitudeMean<br />
timeBodyAccelerometerMagnitudeStd

**Time domain gravity acceleration magnitude mean/std :**<br />
timeGravityAccelerometerMagnitudeMean<br />
timeGravityAccelerometerMagnitudeStd
**Time domain body acceleration jerk magnitude mean/std :**<br />
timeBodyAccelerometerJerkMagnitudeMean<br />
timeBodyAccelerometerJerkMagnitudeStd

**Time domain body gyroscope magnitude mean/std :**<br />
timeBodyGyroscopeMagnitudeMean<br />
timeBodyGyroscopeMagnitudeStd 
**Time domain body gyroscope jerk magnitude mean/std :**<br /><br />
timeBodyGyroscopeJerkMagnitudeMean<br /> timeBodyGyroscopeJerkMagnitudeStd

**Frequency domain body acceleration mean/std/meanFreq along X, Y, and Z:**<br />
frequencyBodyAccelerometerMean-X<br /> frequencyBodyAccelerometerMean-Y<br />
frequencyBodyAccelerometerMean-Z<br /> frequencyBodyAccelerometerStd-X<br />
frequencyBodyAccelerometerStd-Y<br /> frequencyBodyAccelerometerStd-Z<br />
frequencyBodyAccelerometerMeanFreq-X<br />
frequencyBodyAccelerometerMeanFreq-Y<br />
frequencyBodyAccelerometerMeanFreq-Z

**Frequency domain body acceleration jerk mean/std/meanFreq along X, Y, and Z:**<br />
frequencyBodyAccelerometerJerkMean-X<br />
frequencyBodyAccelerometerJerkMean-Y<br />
frequencyBodyAccelerometerJerkMean-Z<br /> frequencyBodyAccelerometerJerkStd-X<br />
frequencyBodyAccelerometerJerkStd-Y<br /> frequencyBodyAccelerometerJerkStd-Z<br />
frequencyBodyAccelerometerJerkMeanFreq-X<br />
frequencyBodyAccelerometerJerkMeanFreq-Y<br />
frequencyBodyAccelerometerJerkMeanFreq-Z

**Frequency domain body gyroscope mean/std/meanFreq along X, Y, and Z:**<br />
frequencyBodyGyroscopeMean-X<br />
frequencyBodyGyroscopeMean-Y<br />
frequencyBodyGyroscopeMean-Z<br /> frequencyBodyGyroscopeStd-X<br />
frequencyBodyGyroscopeStd-Y<br />
frequencyBodyGyroscopeStd-Z<br />
frequencyBodyGyroscopeMeanFreq-X<br /> frequencyBodyGyroscopeMeanFreq-Y<br />
frequencyBodyGyroscopeMeanFreq-Z

**Frequency domain body acceleration magnitude mean/std/meanFreq :**<br />
frequencyBodyAccelerometerMagnitudeMean<br />
frequencyBodyAccelerometerMagnitudeStd<br />
frequencyBodyAccelerometerMagnitudeMeanFreq

**Frequency domain body acceleration jerk magnitude mean/std/meanFreq :**<br />
frequencyBodyAccelerometerJerkMagnitudeMean<br />
frequencyBodyAccelerometerJerkMagnitudeStd<br />
frequencyBodyAccelerometerJerkMagnitudeMeanFreq

**Frequency domain body gyroscope magnitude mean/std/meanFreq :**<br />
frequencyBodyGyroscopeMagnitudeMean<br /> frequencyBodyGyroscopeMagnitudeStd<br />
frequencyBodyGyroscopeMagnitudeMeanFreq

**Frequency domain body gyroscope jerk magnitude mean/std/meanFreq :**<br />
frequencyBodyGyroscopeJerkMagnitudeMean<br />
frequencyBodyGyroscopeJerkMagnitudeStd<br />
frequencyBodyGyroscopeJerkMagnitudeMeanFreq
</p>
</details>

---
## **Transformations**

### Original files :
|  subject (n=30)   |  activity   |measurements|
|-------------------|-------------|------------|
|subject_train.txt (21)|y_train.txt |	X_train.txt  |
|subject_test.txt  (9)|	y_test.txt 	|	X_test.txt   | 
* features.txt : feature names
* activity_labels.txt : activity names
<br/>

### 1. Merge training and test data into one dataset.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The files in the above table are imported as the following dataframes:
* sub_train
* y_train
* X_train
* sub_test
* y_test
* X_test<br/>

&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;After combining the first three into trainData,and the last three into testData, merge them into one complete dataset "df". 
* df : merged dataset.
### 2. Extracts only the measurements on the mean and standard deviation for each measurement.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Read in measurement variable names from features.txt file as featureNames. Map feature names to dataset "df" and extract data with variable names which contains "mean" or "std".
* featureNames : variable names.
* featureIdx : the position of the column which contains "mean" or "std" in it's variable name.
### 3. Uses descriptive activity names to name the activities in the data set
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Read in activity names from activity_labels.txt file as activityName. Map activity names to dataset "df".
* activityName : activity names. 
### 4. Appropriately labels the data set with descriptive variable names.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Rename measurement variable names with descriptive one.
### 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;The merged, extracted and label-modified dataset is grouped by subject and activity, group mean is calculated. The result is exported as tidy_data.txt file.
* tidy_data.txt: The final output data.


