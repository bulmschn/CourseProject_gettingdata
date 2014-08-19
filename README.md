Bryne Ulmschneider - Getting and Cleaning Data Course Project: 
Summary of Human Activity Recognition Using Smartphones Dataset
========================================================

The original data was obtained from this website:
http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

Here's a brief description of the raw data, from the original README.txt file: 
The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING.UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 
==========================================================================================
This code assumes that you have gone to this website:
https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
and then unzipped the files into your working directory. 
This code also requires the plyr package which can be obtained with: 
'''{r}
install.packages("plyr")
library(plyr)
'''
===========================================================================================
Overall, this script produces the mean values of measurments for mean and standard deviation for each subject and each activity. The final data frame is 180 rows and 81 columns (30 subjects each doing 6 
actvities, and 81 columns - 79 meaurements described in the codebook, and an additional column for the activity being done and the subject)


My run_analysis.R code does the following:
0) Reads in all of the relevant files using read.table()
1) Merges the test and training data, activity and subject sets into one data set called merged
2) Takes the labels for each measurements and applies them to the data
3) Selects only the measurements for mean and standard deviation. 
4) Adds columns for activity and subject
5) Cleans up the labels to meet the following requirements: 
      a) lower case
      b) no meta-characters that R might misinterpret
6) Summarizes the data by the column mean for each subject and activity using the plyr package
7) Writes the cleaned data to a .txt file which will output to your working directory (Not the 
UCI HAR Folder). 


