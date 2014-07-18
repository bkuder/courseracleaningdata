courseracleaningdata
====================

This is my course project implementation for Coursera's Getting and Cleaning Data course.

It contains one R script, run_analysis.R, that transforms the Samsung data set into a tidy data set.

This script assumes that your working directory contains a folder named "UCI HAR Dataset" that contains the Samsung data.

The script:

  1. Merges the training and the test sets to create one data set.
  1. Extracts only the measurements on the mean and standard deviation for each measurement. 
  1. Uses descriptive activity names to name the activities in the data set
  1. Appropriately labels the data set with descriptive variable names. 
  1. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 

### Dependencies
This script was developed for use with R, version 3.1.0.

It requires that you have installed the R package "reshape2", version 2.1.4.
