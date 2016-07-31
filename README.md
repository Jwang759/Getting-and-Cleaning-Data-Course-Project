# Introduction to Getting and Cleaning Data Course Project
## The repository includes following files:
1. "README.md": An introduction to the overall project
2. "run_analysis.R": An R script downloads,cleans the data and creates a data set called "groupData".
3. "CODEBOOK.md": A codebook indicates all the variables and summaries calculated.
4. "groupData.txt":  A tidy data set contains the average of each variable for each activity and each subject.

## Steps to reproduce the project
1. Set the working diretory.
2. Run the "run_analysis.R" in R.
3. The group data set is save as "./data/groupData.txt", which could be read into R with the following code: 
   data <- read.table("./project/groupData.txt", header = TRUE)

## Description fo the R script "run_analysis.R"
This run_analysis.R file downloads data from website, then manipulates and cleans the data set to create an independent tidy data set with the average of the mean and standard deviation for each measurement for each activity and each subject.

### Detailed steps inside "run_analysis.R"
1. Merge the training and the test sets to create one data set.  
   a. download the zip file   
   b. unzip data  
   c. read data into R  
   d. merge the training and the test sets  
2.  Extract only the measurements on the mean and standard deviation for each measurement.   
   a. load feature name into R and add column names  
   b. extract mean and standard deviation of each measurements by searching for key words "mean()" and "std()"  
3. Uses descriptive activity names to name the activities in the data set  
   a. load activity data into R  
   b. replace 1 to 6 with activity names  
4. Appropriately labels the data set with descriptive variable names.  
   a. All "()" is removed; all abbreviations are replaced with their full names; all "-" are replaced with "", and all words are seperated with "" in the column names to appropriately label the data set subData with descriptive variable names.  
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

### Datasets explaination
#### Raw daw 
Raw data is downloaded from url "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip" as a zipfile, which is unziped in directory "./data".

#### Training dataset
* Training set is in file "train/X_train.txt".
* Training labels set, which labels the activities, is in file "train/y_train.txt".
* Training subjects set, who performed the activity for each window sample, is in file "train/subject_train.txt".
* The above training related data sets are read into R and merged together by column to create a training data frame assigned to a variable named "trainData".

#### Testing dataset
* Testing set is in file "test/X_test.txt".
* Testing labels set, which labels the activity type, is in file "test/y_test.txt".
* Testing subjects set, who performed the activity for each window sample, is in file "test/subject_test.txt".
* The above testing related data sets are read into R and merged together by column to create a testing data frame assigned to a variable named "testData".

#### fullData frame
* The new dataframes, "trainData" and "testData". are merged by row to create a new data frame named "fullData", which contains 561 features' variables, activity labels and subject for each observation in both training and tesing set.

#### finalData frame
* The names of 561 features are extracted from the second column of file "features.txt" and the last two columns are named "activity" and "subject".
* To extract only the measurements on the mean and standard deviation for each measurement, only the columns with "mean()" or "std()" in their names are selected among the first 561 columns to construct the subset named "finalData", where the last two columns of "activity" and "subject" are kept along with the selected columns to subData.
* The raw data of activity variable is given as class labels from 1 to 6. To use descriptive activity names to name the activities, here I used the function factor to replace each label with its corresponding descriptive name as given in file "activity_labels.txt".

#### grouped dataset
* At the end of script run_analysis.R, the "finalData" is grouped by two variables - "subject" and "activity", and mean value of each variable is calculated for each combination of "subject" and "activity" (meaning the average of feature measurement when a certain volunteer is performing one kind of activities). 
* The grouped data is assigned to variable groupData, and written in a text file with file path "./ata/groupData.txt"
