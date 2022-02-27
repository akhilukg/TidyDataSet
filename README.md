# Coursera Getting and Cleaning Data Course Project

## Project Description

The purpose of this project is to demonstrate the ability to collect, work with, and clean a data set.

One of the most exciting areas in all of data science right now is wearable computing. The data presented here is collected from the accelerometers of the Samsung Galaxy S smartphone.

### Data Source
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip  
  
A script run_analysis.R is created that does the following
1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

## Project Files
### R Script: run_analysis.R

The R script run_analysis.R reads the data files, namely test and train and combines them into single data. Important variable values are renamed from numbers to meaningful names. The full set of variables is reduced to a subset that involve means and standard deviations. Variable names are changed to conform with R's legal variable names and to be descriptive.

### Tidy Data Output: TidyDataSet.txt

The data is then grouped by subject and activity, and summarized by each variable's mean. The tidy data set is written to the file tidyDataset.txt.

### Data Processing Description and Variable Names: CodeBook.md

The file CodeBook.md describes the processing steps and variables used in run_analysis.R 

