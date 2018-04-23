First, download and unzip the data file into your R working directory.
Second, download the R source code into your R working directory.
Finally, execute R source code to generate tidy data set file.

The tidy set text file is generated with the follwing 5 steps
1. Read and Merge Test and Train data
X data y data and subject data

2. Extract only mearuements of mean and std deviation features
Extract from features.txt all the feaure names and subset only tfeatures with -mean and -std 	

3 Change names to descriptive activity name
read activity labels.txt and descriptive columsn names to combiened test and train data as a column
lable the data set with descruptive Variable names from the features.txt
4. Generate an independent tinydata set from Step 4 with average of each variable for each activity
 and each subject