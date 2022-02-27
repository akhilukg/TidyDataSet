# Coursera Getting and Cleaning Data Course Project

## Project Description

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.
One of the most exciting areas in all of data science right now is wearable computing. The data presented here is collected from the accelerometers of the Samsung Galaxy S smartphone.

### Data Source
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
  
## Steps Involved
A script ```run_analysis.R``` is created that does the following
1. Merges the training and the test sets to create one data set.    
*Data was downloaded from the source URL, unzipped and read into R.    
Test and Train set data were combined and merged to created the combined data set Data.*

2. Extracts only the measurements on the mean and standard deviation for each measurement.  
*A  variable('''selectedColNames''') was created to include only those observations that included mean or std in their activity labels.
Subject and Activity was added to the above variable.  
This subsetted names variable was then used to extract the corresponding columns in the full data set and saved.*  

3. Uses descriptive activity names to name the activities in the data set.  
*The coded values for activity were changed to the ```activityLabels```.*  

4. Appropriately labels the data set with descriptive variable names.  
*The names of subsetted data was modified in a number of steps for proper syntaxing: capital letters, correct punctuations, abbreviations replaced etc.   
Finally, theses modified names were applied to the original data set.*  

5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.  
*The semantically correct data set from the end of Step 4 was grouped by subject, then by activity, and summarized so that the observations in each row were the means of the variable 
columns, for that subject/activity.   
This was accomplished by applying the plyr package verbs "aggregate".   
The resulting tidy data set was written to a file called "```TidyDataSet.txt```" using write.table.*  

## Variables

### In the final Tidy Data Set

Subject  
Activity  
TimeBodyAccelerometerMeanX   
TimeBodyAccelerometerMeanY  
TimeBodyAccelerometerMeanZ  
TimeBodyAccelerometerStdX  
TimeBodyAccelerometerStdY  
TimeBodyAccelerometerStdZ  
TimeGravityAccelerometerMeanX  
TimeGravityAccelerometerMeanY  
TimeGravityAccelerometerMeanZ  
TimeGravityAccelerometerStdX  
TimeGravityAccelerometerStdY  
TimeGravityAccelerometerStdZ  
TimeBodyAccelerometerJerkMeanX  
TimeBodyAccelerometerJerkMeanY  
TimeBodyAccelerometerJerkMeanZ  
TimeBodyAccelerometerJerkStdX  
TimeBodyAccelerometerJerkStdY  
TimeBodyAccelerometerJerkStdZ  
TimeBodyGyroscopeMeanX  
TimeBodyGyroscopeMeanY  
TimeBodyGyroscopeMeanZ  
TimeBodyGyroscopeStdX  
TimeBodyGyroscopeStdY  
TimeBodyGyroscopeStdZ  
TimeBodyGyroscopeJerkMeanX  
TimeBodyGyroscopeJerkMeanY  
TimeBodyGyroscopeJerkMeanZ  
TimeBodyGyroscopeJerkStdX  
TimeBodyGyroscopeJerkStdY  
TimeBodyGyroscopeJerkStdZ  
TimeBodyAccelerometerMagnitudeMean  
TimeBodyAccelerometerMagnitudeStd   
TimeGravityAccelerometerMagnitudeMean  
TimeGravityAccelerometerMagnitudeStd   
TimeBodyAccelerometerJerkMagnitudeMean   
TimeBodyAccelerometerJerkMagnitudeStd   
TimeBodyGyroscopeMagnitudeMean   
TimeBodyGyroscopeMagnitudeStd   
TimeBodyGyroscopeJerkMagnitudeMean  
TimeBodyGyroscopeJerkMagnitudeStd  
FrequencyBodyAccelerometerMeanX  
FrequencyBodyAccelerometerMeanY  
FrequencyBodyAccelerometerMeanZ  
FrequencyBodyAccelerometerStdX  
FrequencyBodyAccelerometerStdY  
FrequencyBodyAccelerometerStdZ  
FrequencyBodyAccelerometerJerkMeanX  
FrequencyBodyAccelerometerJerkMeanY  
FrequencyBodyAccelerometerJerkMeanZ  
FrequencyBodyAccelerometerJerkStdX  
FrequencyBodyAccelerometerJerkStdY  
FrequencyBodyAccelerometerJerkStdZ  
FrequencyBodyGyroscopeMeanX  
FrequencyBodyGyroscopeMeanY  
FrequencyBodyGyroscopeMeanZ  
FrequencyBodyGyroscopeStdX  
FrequencyBodyGyroscopeStdY  
FrequencyBodyGyroscopeStdZ  
FrequencyBodyAccelerometerMagnitudeMean  
FrequencyBodyAccelerometerMagnitudeStd  
FrequencyBodyAccelerometerJerkMagnitudeMean  
FrequencyBodyAccelerometerJerkMagnitudeStd  
FrequencyBodyGyroscopeMagnitudeMean  
FrequencyBodyGyroscopeMagnitudeStd  
FrequencyBodyGyroscopeJerkMagnitudeMean  
FrequencyBodyGyroscopeJerkMagnitudeStd   
