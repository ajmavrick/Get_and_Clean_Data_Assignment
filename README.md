##Overview

This repositry contains code to create a tidy summary dataset which contains the averages of mean 
and standard deviation measurement by activity and subjectID.

The input data was obtained from the zip found at:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip

as is on

Human Activity Recognition Using Smartphones Data Set 

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

## Scripts

The only script required is "run_analysis.R". This script reads, binds and merges all the required files.
It then create a summary with the average of the mean and standard deviation measurements by activity and subjectID.

The required files which are mentioned in more detail in CodeBook.md should all be copied to the working 
directory before running the script.

The CodeBook.md can be found at:

https://github.com/ajmavrick/Get_and_Clean_Data_Assignment/blob/master/CodeBook.md

This final summarised dataset is:

activity_subjectID_summary.txt


## Tidy

This final output is tidy as:

1) All variable are in their own columns
2) Each column represents one average of the mean or std measures
3) Each row repsents a grouping of activity and subjectID
4) The table could be merged to other tables by subjectID or (SubjectID and activity)
