Coursera Getting and Cleaning Data
=========

### Course Project

Version 1.0

Brian Kuder


### Overview

The run_analysis.R script reads in the UCI HAR Dataset described here:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

And produces a new dataset that summarizes all of the means and stds in the original data set by subject and activity. This new file is named:

mean_std_averages_by_subject_and_activity.txt

It is a tab delimited file containing a header row.

### Data fields

The following 68 data fields are present in the tab delimited file. The 1st two data fields identify the activity and subject. The remanining 66 fields are the average value for each mean and standard deviation (std) feature in the original data set, by activity and subject.

  - activity : The activity being performed.
  - subject : The subject's identifier. The range is from 1 to 30.
  - tBodyAcc_mean_X
  - tBodyAcc_mean_Y
  - tBodyAcc_mean_Z
  - tBodyAcc_std_X
  - tBodyAcc_std_Y
  - tBodyAcc_std_Z
  - tGravityAcc_mean_X
  - tGravityAcc_mean_Y
  - tGravityAcc_mean_Z
  - tGravityAcc_std_X
  - tGravityAcc_std_Y
  - tGravityAcc_std_Z
  - tBodyAccJerk_mean_X
  - tBodyAccJerk_mean_Y
  - tBodyAccJerk_mean_Z
  - tBodyAccJerk_std_X
  - tBodyAccJerk_std_Y
  - tBodyAccJerk_std_Z
  - tBodyGyro_mean_X
  - tBodyGyro_mean_Y
  - tBodyGyro_mean_Z
  - tBodyGyro_std_X
  - tBodyGyro_std_Y
  - tBodyGyro_std_Z
  - tBodyGyroJerk_mean_X
  - tBodyGyroJerk_mean_Y
  - tBodyGyroJerk_mean_Z
  - tBodyGyroJerk_std_X
  - tBodyGyroJerk_std_Y
  - tBodyGyroJerk_std_Z
  - tBodyAccMag_mean
  - tBodyAccMag_std
  - tGravityAccMag_mean
  - tGravityAccMag_std
  - tBodyAccJerkMag_mean
  - tBodyAccJerkMag_std
  - tBodyGyroMag_mean
  - tBodyGyroMag_std
  - tBodyGyroJerkMag_mean
  - tBodyGyroJerkMag_std
  - fBodyAcc_mean_X
  - fBodyAcc_mean_Y
  - fBodyAcc_mean_Z
  - fBodyAcc_std_X
  - fBodyAcc_std_Y
  - fBodyAcc_std_Z
  - fBodyAccJerk_mean_X
  - fBodyAccJerk_mean_Y
  - fBodyAccJerk_mean_Z
  - fBodyAccJerk_std_X
  - fBodyAccJerk_std_Y
  - fBodyAccJerk_std_Z
  - fBodyGyro_mean_X
  - fBodyGyro_mean_Y
  - fBodyGyro_mean_Z
  - fBodyGyro_std_X
  - fBodyGyro_std_Y
  - fBodyGyro_std_Z
  - fBodyAccMag_mean
  - fBodyAccMag_std
  - fBodyBodyAccJerkMag_mean
  - fBodyBodyAccJerkMag_std
  - fBodyBodyGyroMag_mean
  - fBodyBodyGyroMag_std
  - fBodyBodyGyroJerkMag_mean
  - fBodyBodyGyroJerkMag_std
