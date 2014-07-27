## Input Data

The input data was obtained from the zip found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

as is on

Human Activity Recognition Using Smartphones Data Set 

The following file were used from the zip file.
They should all be copied into your working directory before running
the R code.

X_train.txt
y_train.txt
subject_train.txt
X_test.txt
y_test.txt
subject_test.txt
features.txt
activity_labels.txt

## Transformations

This section contains a simplified version of the transformations
used to create activity_subjectID_summary.txt

The full R code use to create activity_subjectID_summary.txt
is run_analaysis.R

1) These files were read into R

X_train.txt
y_train.txt
subject_train.txt
X_test.txt
y_test.txt
subject_test.txt
features.txt
activity_labels.txt

2) The features txt was used to rename the variables in:

X_train
X_test

3) Only the columns containing mean or std and not meanFreq 
were kept from these two datasets

4)The reduced x datasets were then column binded with their respective 
y and subject datasets to create a train and test datset.

In this step a variable originalDataset was created to label whether the data was originally 
from test or train

5) The test and train data was then rowbinded to create a combined dataset

6) The activity_labels were then merged onto this combined datset to 
give a text description of the activities

7) The average of the mean and standard deviation measures was then taken
by subject and activity.

8) This final file was output to CSV as

activity_subjectID_summary.txt

## Output data

As previously mentioned the final output is:

activity_subjectID_summary.txt 

This contains the average of the original mean and std measure by activity and subjectID

## Variables

The variables in activity_subjectID_summary.txt are shown further below.
Each row contains the averages of the original mean and standard deviation measures
for each combination of activity (which is a text activity description which can be
WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) 
and subjectID (A numeric subject ID).

The measure variables start with Average_of_ to give an easy description of 
what is in the variable. The second half off the variable name has been
deliberately left unchanged so it can easily be linked back to the original study.

Taking the average does not alter the units, so please refer to the original
study which can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

for the dimensional units

The variables in activity_subjectID_summary.txt are shown below.

Column  Name
1	activity
2	subjectID
3	Average of fBodyAcc-mean()-X
4	Average of fBodyAcc-mean()-Y
5	Average of fBodyAcc-mean()-Z
6	Average of fBodyAcc-std()-X
7	Average of fBodyAcc-std()-Y
8	Average of fBodyAcc-std()-Z
9	Average of fBodyAccJerk-mean()-X
10	Average of fBodyAccJerk-mean()-Y
11	Average of fBodyAccJerk-mean()-Z
12	Average of fBodyAccJerk-std()-X
13	Average of fBodyAccJerk-std()-Y
14	Average of fBodyAccJerk-std()-Z
15	Average of fBodyAccMag-mean()
16	Average of fBodyAccMag-std()
17	Average of fBodyBodyAccJerkMag-mean()
18	Average of fBodyBodyAccJerkMag-std()
19	Average of fBodyBodyGyroJerkMag-mean()
20	Average of fBodyBodyGyroJerkMag-std()
21	Average of fBodyBodyGyroMag-mean()
22	Average of fBodyBodyGyroMag-std()
23	Average of fBodyGyro-mean()-X
24	Average of fBodyGyro-mean()-Y
25	Average of fBodyGyro-mean()-Z
26	Average of fBodyGyro-std()-X
27	Average of fBodyGyro-std()-Y
28	Average of fBodyGyro-std()-Z
29	Average of tBodyAcc-mean()-X
30	Average of tBodyAcc-mean()-Y
31	Average of tBodyAcc-mean()-Z
32	Average of tBodyAcc-std()-X
33	Average of tBodyAcc-std()-Y
34	Average of tBodyAcc-std()-Z
35	Average of tBodyAccJerk-mean()-X
36	Average of tBodyAccJerk-mean()-Y
37	Average of tBodyAccJerk-mean()-Z
38	Average of tBodyAccJerk-std()-X
39	Average of tBodyAccJerk-std()-Y
40	Average of tBodyAccJerk-std()-Z
41	Average of tBodyAccJerkMag-mean()
42	Average of tBodyAccJerkMag-std()
43	Average of tBodyAccMag-mean()
44	Average of tBodyAccMag-std()
45	Average of tBodyGyro-mean()-X
46	Average of tBodyGyro-mean()-Y
47	Average of tBodyGyro-mean()-Z
48	Average of tBodyGyro-std()-X
49	Average of tBodyGyro-std()-Y
50	Average of tBodyGyro-std()-Z
51	Average of tBodyGyroJerk-mean()-X
52	Average of tBodyGyroJerk-mean()-Y
53	Average of tBodyGyroJerk-mean()-Z
54	Average of tBodyGyroJerk-std()-X
55	Average of tBodyGyroJerk-std()-Y
56	Average of tBodyGyroJerk-std()-Z
57	Average of tBodyGyroJerkMag-mean()
58	Average of tBodyGyroJerkMag-std()
59	Average of tBodyGyroMag-mean()
60	Average of tBodyGyroMag-std()
61	Average of tGravityAcc-mean()-X
62	Average of tGravityAcc-mean()-Y
63	Average of tGravityAcc-mean()-Z
64	Average of tGravityAcc-std()-X
65	Average of tGravityAcc-std()-Y
66	Average of tGravityAcc-std()-Z
67	Average of tGravityAccMag-mean()
68	Average of tGravityAccMag-std()
