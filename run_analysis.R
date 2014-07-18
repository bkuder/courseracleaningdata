# Read in the feature names file and massage the values to remove parens and convert - to _
featureNamesFile <- "UCI HAR Dataset/features.txt"
featureNames <- read.csv(featureNamesFile, header=FALSE, sep="", stringsAsFactors=TRUE)
featureNamesVector <- sapply(featureNames$V2,function(s) gsub("[\\(\\)]","",gsub("-","_",s)))

# Read in the activity names file
activityNamesFile <- "UCI HAR Dataset/activity_labels.txt"
activityNames <- read.csv(activityNamesFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=c("id","activity"))

# Read in the test/training data files, 
# 4. leverage col.names to appropriately labels the data set with descriptive variable names. 
trainingSetFile <- "UCI HAR Dataset/train/X_train.txt"
trainingSet <- read.csv(trainingSetFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=featureNamesVector)
trainingLabelsFile <- "UCI HAR Dataset/train/Y_train.txt"
trainingLabels <- read.csv(trainingLabelsFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=c("activity"))
trainingSubjectsFile <- "UCI HAR Dataset/train/subject_train.txt"
trainingSubjects <- read.csv(trainingSubjectsFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=c("subject"))

testSetFile <- "UCI HAR Dataset/test/X_test.txt"
testSet <- read.csv(testSetFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=featureNamesVector)
testLabelsFile <- "UCI HAR Dataset/test/Y_test.txt"
testLabels <- read.csv(testLabelsFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=c("activity"))
testSubjectsFile <- "UCI HAR Dataset/test/subject_test.txt"
testSubjects <- read.csv(testSubjectsFile, header=FALSE, sep="", stringsAsFactors=TRUE, col.names=c("subject"))

# 1. Merge the test and training sets to create one data set
combinedSet <- rbind(trainingSet,testSet)
combinedLabels <- rbind(trainingLabels,testLabels)
combinedSubjects <- rbind(trainingSubjects,testSubjects)

# 2. Extract only the measurements on the mean and standard deviation for each measurement. 
meanStdSet <- combinedSet[,grep("mean(_[XYZ])?$|std(_[XYZ])?$",featureNamesVector)]

# 3. Use descriptive activity names to name the activities in the data set
convertedLabels <- sapply(combinedLabels$activity,function(n) activityNames[activityNames$id==n,"activity"])

# Add the activity and subjects as new columns to the meanStdSet
meanStdSet$activity <- convertedLabels
meanStdSet$subject <- combinedSubjects$subject

# 5. Create a data set with the average of each variable for each activity and subject
library(reshape2)
meanStdMelt <- melt(meanStdSet,id=c("activity","subject"))
meanStdAverages <- dcast(meanStdMelt, activity + subject ~ variable, mean)

# Write out the new, tidy, data set
write.table(meanStdAverages, file = "mean_std_averages_by_subject_and_activity.txt", sep = "\t", quote=FALSE, row.names=FALSE)