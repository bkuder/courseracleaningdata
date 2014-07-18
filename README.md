courseracleaningdata
====================

This is my course project implementation for Coursera's Getting and Cleaning Data course.

It contains one R script, run_analysis.R, that transforms the Samsung data set into a tidy data set.

This script assumes that your working directory contains a folder named "UCI HAR Dataset" that contains the Samsung data.

The script:

  1. Merges the training and the test sets to create one data set.
    1. rbind was used to combine the "X_train.txt" data with the "X_test.txt" data
    1. The column names were set using the list of features provided in "features.txt"
  1. Extracts only the measurements on the mean and standard deviation for each measurement. 
    1. The merged data set was filtered to include only the features labelled as "mean()" or "std()" in the original dataset
  1. Uses descriptive activity names to name the activities in the data set
    1. The activity labels found in "Y_train.txt" and "Y_test.txt" were converted to user-friendly strings by using the lookup table provided in "activity_labels.txt"
  1. Appropriately labels the data set with descriptive variable names. 
    1. As mentioned above, the data was labelled using the feature names provided in "features.txt". Note that parenthesis were removed and dashes (-) were replaced by underscores (_)
  1. Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 
    1. melt was used to organize the new database by activity and subject, then dcast was applied to roll up the averages by those two dimensions.
    1. The output file is named "mean_std_averages_by_subject_and_activity.txt"
    1. You can read it into R using the command:
       read.table("mean_std_averages_by_subject_and_activity.txt",sep="\t",header=TRUE)

### Dependencies
This script was developed for use with R, version 3.1.0.

It requires that you have installed the R package "reshape2", version 2.1.4.
