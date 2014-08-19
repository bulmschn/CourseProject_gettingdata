#this script assumes that you have the UCI Har Dataset folder of files downloaded into your working 
#directory
train <- read.table("./UCI HAR Dataset/train/X_train.txt")
test <- read.table("./UCI HAR Dataset/test/X_test.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
merged <- rbind(train, test)
#reads in test and train data and merges them together 
train_subjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
test_subjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
test_activity <- read.table("./UCI HAR Dataset/test/y_test.txt")
train_activity <- read.table("./UCI HAR Dataset/train/y_train.txt")
all_subjects <- rbind(test_subjects, train_subjects)
all_activity <- rbind(test_activity, train_activity)
#get the list of subjects and activity types and mergers them together
labels <- read.table("./UCI HAR Dataset/features.txt")
colheads <- labels[,2]
names(merged) <- colheads
mean_id <- grep("mean",colheads ); std_id <- grep("std", colheads)
keep <- c(mean_id, std_id)
merged <- merged[keep]
#finds the columns that have mean and std and pulls them out of the dataset
allnames <- names(merged)
merged$activity <- all_activity$V1
merged$subject <- all_subjects$V1
allnames <- c(allnames, "activity", "subject")
#adding activiy and subject to merged df
allnames <- tolower(gsub("-", "", allnames)); allnames <-gsub("\\()", "", allnames)
#cleaning up names to remove unwanted characters and make lower case
names(merged) <- allnames

require(plyr)
library(plyr)
tidy <- ddply(merged, .(activity, subject), .fun= colMeans)
tidy$activity[tidy$activity == 1] <- "walking"
tidy$activity[tidy$activity == 2] <- "walking_upstairs"
tidy$activity[tidy$activity == 3] <- "walking_downstairs"
tidy$activity[tidy$activity == 4] <- "sitting"
tidy$activity[tidy$activity == 5] <- "standing"
tidy$activity[tidy$activity == 6] <- "laying"
#converts activity descriptor to more useful words
tidy$activity <- as.factor(tidy$activity)
tidy$subject <- as.factor(tidy$subject)
#converting names to factors so they can be accessed by the $ operator
write.table(tidy, "UCI_data_cleaned.txt", row.name = FALSE)