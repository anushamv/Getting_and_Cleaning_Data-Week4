Tidy Data set

Steps to get to the final data set

1.The training and testing  data that was provided was first merged into one set. 
This invovled merging X Y and subjects.
2. Of all the features in the dataset, only the mean() and std deviation measures were extracted
for the new combined dataset
3. The activity labels were added to the dataset as one of hte columns to make the data set naems more descriptive
4. The data set was labelled with descriptive vairaible names by using the labels from the features.txt file provided 
as part of the dataset.
5. An indenpendent tiny data was generate by summarising each variable for each activity and each subject 


The data set contains one row for each subject (1 to 30) for each activity ( walking, walking_upstairs.
...., Laying) making a toital of 180 rows.
It contains 68 columns, 66 of which are average mean and std measurements and 2  labels (subject and activity)