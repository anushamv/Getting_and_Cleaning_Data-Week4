
#Getting and Cleaning Data Project
library(dplyr)

#1 Read and Merge Test and Train data
# X data
X_Train <- read.table("./UCI HAR Dataset/train/X_train.txt")
X_Test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_Combined <- rbind(X_train, X_test)

#Y  data
Y_Train <- read.table("./UCI HAR Dataset/train/Y_train.txt")
Y_Test <- read.table("./UCI HAR Dataset/test/Y_test.txt")
Y_Combined <- rbind(Y_Train, Y_test)

#Subject Data
Subject_Train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
Subject_Test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
Subject_Combined <- rbind(Subject_Train, Subject_Test)

#2 Extract only mearuements of mean and std deviation features
Features <- read.table("./UCI HAR Dataset/features.txt")
SubFeatures <- Features[grep("-mean\\(|-std\\(",Features[,2]),]
X_Combined <- X_Combined[,SubFeatures[,1]]

#3 Change names to descriptive activity name  
ActivityLabels <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(Y_Combined) <- "Activity"
Y_Combined$ActivityLabel <- factor(Y_Combined$Activity, labels = as.character(ActivityLabels[,2]))
ActivityLabels <- Y_Combined[,-1]

#4 label the data set with descriptive variable names
colnames(X_Combined) <- Features[SubFeatures[,1],2]

#5 Generate an independent tinydata set from Step 4 with average of each variable for each activity and each subject
colnames(Subject_Combined) <- "Subject"
TotalActivity <- cbind(X_Combined, ActivityLabels, Subject_Combined)
TotalActivity_Mean <- TotalActivity %>% group_by(ActivityLabels, Subject) %>% summarize_all(funs(mean))
write.table(total_mean, file = "./UCI HAR Dataset/TidyDataSet.txt", row.names = FALSE, col.names = TRUE)



