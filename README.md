## Scripts

The only script required is "run_analysis.R". This script reads, binds and merges all the required files.

The required files which are mentioned in more detail in CodeBook.md should all be copied to the working 
directory before running the script.

The average of the mean and std measure is the taken by activity and subjectID.

This final summarised dataset is:

activity_subjectID_summary.txt

This final output is tidy as:

1) All variable are in their own columns
2) Each column represents one average of the mean or std measures  
3) Each row repsents a grouping of activity and subjectID
4) The table could be merged to other tables by subjectID or (SubjectID and activity) 