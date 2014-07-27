## Input Data

The input data was obtained from the zip found at:

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

and is on

Human Activity Recognition Using Smartphones Data Set 

Further information on the data can be found at:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

The following files were used from the zip file.
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
is run_analaysis.R. This was run using R x64 3.0.3.

1) These files were read into R

X_train.txt
y_train.txt
subject_train.txt
X_test.txt
y_test.txt
subject_test.txt
features.txt
activity_labels.txt

2) The features.txt was used to rename the variables in:

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

8) This final file was output to txt as

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

Column  Name					Type
1	activity				Factor with 6 levels
2	subjectID				Integer (1 to 30)
3	Average of fBodyAcc-mean()-X		Numeric
4	Average of fBodyAcc-mean()-Y		Numeric
5	Average of fBodyAcc-mean()-Z		Numeric
6	Average of fBodyAcc-std()-X		Numeric
7	Average of fBodyAcc-std()-Y		Numeric
8	Average of fBodyAcc-std()-Z		Numeric
9	Average of fBodyAccJerk-mean()-X	Numeric
10	Average of fBodyAccJerk-mean()-Y	Numeric
11	Average of fBodyAccJerk-mean()-Z	Numeric
12	Average of fBodyAccJerk-std()-X		Numeric
13	Average of fBodyAccJerk-std()-Y		Numeric
14	Average of fBodyAccJerk-std()-Z		Numeric
15	Average of fBodyAccMag-mean()		Numeric
16	Average of fBodyAccMag-std()		Numeric
17	Average of fBodyBodyAccJerkMag-mean()	Numeric
18	Average of fBodyBodyAccJerkMag-std()	Numeric
19	Average of fBodyBodyGyroJerkMag-mean()	Numeric
20	Average of fBodyBodyGyroJerkMag-std()	Numeric
21	Average of fBodyBodyGyroMag-mean()	Numeric
22	Average of fBodyBodyGyroMag-std()	Numeric
23	Average of fBodyGyro-mean()-X		Numeric
24	Average of fBodyGyro-mean()-Y		Numeric
25	Average of fBodyGyro-mean()-Z		Numeric
26	Average of fBodyGyro-std()-X		Numeric
27	Average of fBodyGyro-std()-Y		Numeric
28	Average of fBodyGyro-std()-Z		Numeric
29	Average of tBodyAcc-mean()-X		Numeric
30	Average of tBodyAcc-mean()-Y		Numeric
31	Average of tBodyAcc-mean()-Z		Numeric
32	Average of tBodyAcc-std()-X		Numeric
33	Average of tBodyAcc-std()-Y		Numeric
34	Average of tBodyAcc-std()-Z		Numeric
35	Average of tBodyAccJerk-mean()-X	Numeric
36	Average of tBodyAccJerk-mean()-Y	Numeric
37	Average of tBodyAccJerk-mean()-Z	Numeric
38	Average of tBodyAccJerk-std()-X		Numeric
39	Average of tBodyAccJerk-std()-Y		Numeric
40	Average of tBodyAccJerk-std()-Z		Numeric
41	Average of tBodyAccJerkMag-mean()	Numeric
42	Average of tBodyAccJerkMag-std()	Numeric
43	Average of tBodyAccMag-mean()		Numeric
44	Average of tBodyAccMag-std()		Numeric
45	Average of tBodyGyro-mean()-X		Numeric
46	Average of tBodyGyro-mean()-Y		Numeric
47	Average of tBodyGyro-mean()-Z		Numeric
48	Average of tBodyGyro-std()-X		Numeric
49	Average of tBodyGyro-std()-Y		Numeric
50	Average of tBodyGyro-std()-Z		Numeric
51	Average of tBodyGyroJerk-mean()-X	Numeric
52	Average of tBodyGyroJerk-mean()-Y	Numeric
53	Average of tBodyGyroJerk-mean()-Z	Numeric
54	Average of tBodyGyroJerk-std()-X	Numeric
55	Average of tBodyGyroJerk-std()-Y	Numeric
56	Average of tBodyGyroJerk-std()-Z	Numeric
57	Average of tBodyGyroJerkMag-mean()	Numeric
58	Average of tBodyGyroJerkMag-std()	Numeric
59	Average of tBodyGyroMag-mean()		Numeric
60	Average of tBodyGyroMag-std()		Numeric
61	Average of tGravityAcc-mean()-X		Numeric
62	Average of tGravityAcc-mean()-Y		Numeric
63	Average of tGravityAcc-mean()-Z		Numeric
64	Average of tGravityAcc-std()-X		Numeric
65	Average of tGravityAcc-std()-Y		Numeric
66	Average of tGravityAcc-std()-Z		Numeric
67	Average of tGravityAccMag-mean()	Numeric
68	Average of tGravityAccMag-std()		Numeric

