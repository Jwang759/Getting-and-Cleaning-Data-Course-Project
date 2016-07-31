# Introduction to Getting and Cleaning Data Course Project
## The repository includes following files:
1. "README.md": An introduction to the overall project
2. "run_analysis.R": An R script downloads,cleans the data and creates a data set called "groupData".
3. "CODEBOOK.md": A codebook indicates all the variables and summaries calculated.
4. "finalData.txt": A tidy data set for the downloaded data ready for further analysis.
5. "groupData.txt":  A tidy data set contains the average of each variable for each activity and each subject.

## Steps to reproduce the project
1. Set the working diretory.
2. Run the "run_analysis.R" in R.
3. The cleaned data set is saved as "./data/finalData.txt", which could be read into R with the following code:
   data <- read.table("./project/finalData.txt", header = TRUE)
4. The group data set is save as "./data/groupData.txt", which could be read into R with the following code: 
   data <- read.table("./project/groupData.txt", header = TRUE)

## Description fo the R script "run_analysis.R"
