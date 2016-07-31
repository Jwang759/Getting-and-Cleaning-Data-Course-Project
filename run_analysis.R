# set the working directory


# 1.Merge the training and the test sets to create one data set.
## download the zip file 
if(!file.exists("./data")){dir.create("./data")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/dataset.zip")
## unzip data
dataset <- unzip("./data/dataset.zip", exdir = "./data")
## read data into R
train.x <- read.table("./data/UCI HAR Dataset/train/X_train.txt")
train.y <- read.table("./data/UCI HAR Dataset/train/y_train.txt")
train.subject <- read.table("./data/UCI HAR Dataset/train/subject_train.txt")
test.x <- read.table("./data/UCI HAR Dataset/test/X_test.txt")
test.y <- read.table("./data/UCI HAR Dataset/test/y_test.txt")
test.subject <- read.table("./data/UCI HAR Dataset/test/subject_test.txt")
## merge the training and the test sets
trainData <- cbind(train.x, train.y, train.subject)
testData <- cbind(test.x, test.y, test.subject)
fullData <- rbind(trainData, testData)


# 2.  Extract only the measurements on the mean and standard deviation for each measurement. 
## load feature name into R and add column names
featureName <- as.character(read.table("./data/UCI HAR Dataset/features.txt", stringsAsFactors = FALSE)[,2])
featureName <- c(featureName, "activity", "subject")
colnames(fullData) <- featureName
## extract mean and standard deviation of each measurements by searching for key words "mean()" and "std()"
subNames <- c(grep(("mean\\(\\)|std\\(\\)"), featureName, value = TRUE), "activity", "subject")
finalData <- subset(fullData,select = subNames)


# 3. Uses descriptive activity names to name the activities in the data set
## load activity data into R
activityName <- read.table("./data/UCI HAR Dataset/activity_labels.txt")
## replace 1 to 6 with activity names
finalData$activity <- factor(finalData$activity, levels = activityName[,1], labels = activityName[,2])


# 4. Appropriately labels the data set with descriptive variable names.
names(finalData) <- gsub("\\()", "", names(finalData))
names(finalData) <- gsub("^t", "time", names(finalData))
names(finalData) <- gsub("^f", "frequence", names(finalData))
names(finalData) <- gsub("-mean", "Mean", names(finalData))
names(finalData) <- gsub("-std", "Std", names(finalData))
names(finalData) <- gsub("Acc", "_Accelerometer", names(finalData))
names(finalData) <- gsub("Gyro", "_Gyroscope", names(finalData))
names(finalData) <- gsub("Mag", "_Magnitude", names(finalData))
names(finalData) <- gsub("Jerk", "_Jerk", names(finalData))
names(finalData) <- gsub("BodyBody", "Body", names(finalData))


# 5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable 
#for each activity and each subject.
library(dplyr)
groupData <- finalData %>%
  group_by(subject, activity) %>%
  summarise_each(funs(mean))
write.table(groupData, "./data/groupData.txt", row.names = FALSE)
