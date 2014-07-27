#This R script is used to create a summarised tidy dataset with the average of mean and standard derviation measure
#by activity and subject id from the 
#Human Activity Recognition Using Smartphones Data Set 

#All of the input files from the samsung data should be copied to the working directory before running the script.
#Alternatively the setwd() which have been commented out and altered to refer to the correct locations.

#Input files which should be copied to work directory include:
#  X_train.txt
#  y_train.txt
#  subject_train.txt
#  X_test.txt
#  y_test.txt
#  subject_test.txt
#  features.txt
#  activity_labels.txt

#import train data
#setwd("C:\\Users\\Alex\\Documents\\Coursera\\ass\\UCI HAR Dataset\\train")
x_train<-read.table("X_train.txt")
y_train<-read.table("y_train.txt")
subjectID_train<-read.table("subject_train.txt")

#import test data
#setwd("C:\\Users\\Alex\\Documents\\Coursera\\ass\\UCI HAR Dataset\\test")
x_test<-read.table("X_test.txt")
y_test<-read.table("y_test.txt")
subjectID_test<-read.table("subject_test.txt")

#get names
#setwd("C:\\Users\\Alex\\Documents\\Coursera\\ass\\UCI HAR Dataset")
names_x<-read.table("features.txt")
activityLabels<-read.table("activity_labels.txt")

#Apply names to x datasets
names(x_train)<-names_x$V2
names(x_test)<-names_x$V2

#get list where it contains mean and std values but not meanFreq values
name_list<-names(x_train)[!grepl("meanFreq",names(x_train))&(grepl("mean",names(x_train))|grepl("std",names(x_train)))]

#only select columns in the list for train and test

x_train_mean_std<-x_train[,c(name_list)]
x_test_mean_std<-x_test[,c(name_list)]

#rename column in subjectID_train, y_train, subjectID_test, y_test

names(subjectID_train)<-"subjectID"
names(y_train)<-"activityCode"

names(subjectID_test)<-"subjectID"
names(y_test)<-"activityCode"

#rename columns in activityLabels
names(activityLabels)<-c("activityCode","activity")

#cbind train data
train_combined=cbind(subjectID_train,y_train,originalDataset=rep("Train",nrow(subjectID_train)),x_train_mean_std)

#cbind train data

test_combined=cbind(subjectID_test,y_test,originalDataset=rep("Test",nrow(subjectID_test)),x_test_mean_std)

#Combine train and test datasets

train_and_test<-rbind(train_combined,test_combined)

activity_subjectID_averages_and_std<-merge(activityLabels,train_and_test,all=TRUE)
activity_subjectID_averages_and_std <- subset(activity_subjectID_averages_and_std, select = -c(activityCode) )

#Create tidy Summary Dataset
#install.packages("reshape2")
library(reshape2)

activity_subjectID_averages_and_std_Melt <- melt(activity_subjectID_averages_and_std, id=c("subjectID", "activity"), measure.vars=c(name_list)); #melting tidy data set
activity_subjectID_averages_and_std_Melt$variable <- paste("Average_of_", activity_subjectID_averages_and_std_Melt$variable, sep=" ")
activity_subjectID_summary <- dcast(activity_subjectID_averages_and_std_Melt, activity + subjectID ~ variable, mean)

#Output Tidy Summary Dataset
#setwd("C:\\Users\\Alex\\Documents\\Coursera\\ass")
write.table(activity_subjectID_summary, "activity_subjectID_summary.txt", sep="\t", row.names=FALSE)

#Additional code which was used to get column names for CodeBook.Md
#output_names<-data.frame(names(activity_subjectID_summary))
#write.csv(output_names, "output_names.csv")
