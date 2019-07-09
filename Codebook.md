---
title: "Dataset description"
author: "Sigurvin Bjarnason"
date: "09-07-2019"
output:
  html_document:
    keep_md: yes
---

## Project Description
The purpose of this project is to demonstrate your ability to collect, work with, and clean a data set. The goal is to prepare tidy data that can be used for later analysis.


###Collection of the raw data
Raw data is downloaded and read into R using the Download_files.R script


##Creating the tidy datafile

###Guide to create the tidy data file
1. Run the Download_files.r
2. Using the files downloaded in 1, run script; run_analysis.R to generate tidy data.


##Description of the variables in the TidyData.txt file
General description of the file including:
 - Summary of the data is seen in TidyData.txt
 - Variables present in the dataset are: 


Dataset description

Identifiers
"activity": The type of activity
"subject": The subject ID

Activity column has 6 types as listed below.
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

Measurements:

"activity"  
"subject" 
"tBodyAcc-mean()-X" 
"tBodyAcc-mean()-Y" 
"tBodyAcc-mean()-Z" 
"tBodyAcc-std()-X"  
"tBodyAcc-std()-Y"  
"tBodyAcc-std()-Z"  
"tGravityAcc-mean()-X"  
"tGravityAcc-mean()-Y"  
"tGravityAcc-mean()-Z"  
"tGravityAcc-std()-X" 
"tGravityAcc-std()-Y" 
"tGravityAcc-std()-Z" 
"tBodyAccJerk-mean()-X" 
"tBodyAccJerk-mean()-Y" 
"tBodyAccJerk-mean()-Z" 
"tBodyAccJerk-std()-X"  
"tBodyAccJerk-std()-Y"  
"tBodyAccJerk-std()-Z"  
"tBodyGyro-mean()-X"  
"tBodyGyro-mean()-Y"  
"tBodyGyro-mean()-Z"  
"tBodyGyro-std()-X" 
"tBodyGyro-std()-Y" 
"tBodyGyro-std()-Z" 
"tBodyGyroJerk-mean()-X"  
"tBodyGyroJerk-mean()-Y"  
"tBodyGyroJerk-mean()-Z"  
"tBodyGyroJerk-std()-X" 
"tBodyGyroJerk-std()-Y" 
"tBodyGyroJerk-std()-Z" 
"tBodyAccMag-mean()"  
"tBodyAccMag-std()" 
"tGravityAccMag-mean()" 
"tGravityAccMag-std()"  
"tBodyAccJerkMag-mean()"  
"tBodyAccJerkMag-std()" 
"tBodyGyroMag-mean()" 
"tBodyGyroMag-std()"  
"tBodyGyroJerkMag-mean()" 
"tBodyGyroJerkMag-std()"  
"fBodyAcc-mean()-X" 
"fBodyAcc-mean()-Y" 
"fBodyAcc-mean()-Z" 
"fBodyAcc-std()-X"  
"fBodyAcc-std()-Y"  
"fBodyAcc-std()-Z"  
"fBodyAccJerk-mean()-X" 
"fBodyAccJerk-mean()-Y" 
"fBodyAccJerk-mean()-Z" 
"fBodyAccJerk-std()-X"  
"fBodyAccJerk-std()-Y"  
"fBodyAccJerk-std()-Z"  
"fBodyGyro-mean()-X"  
"fBodyGyro-mean()-Y"  
"fBodyGyro-mean()-Z"  
"fBodyGyro-std()-X" 
"fBodyGyro-std()-Y" 
"fBodyGyro-std()-Z" 
"fBodyAccMag-mean()"  
"fBodyAccMag-std()" 
"fBodyBodyAccJerkMag-mean()"  
"fBodyBodyAccJerkMag-std()" 
"fBodyBodyGyroMag-mean()" 
"fBodyBodyGyroMag-std()"  
"fBodyBodyGyroJerkMag-mean()" 
"fBodyBodyGyroJerkMag-std()"  

Variable units  
Activity variable is factor type. Subject variable is integer type. All the other variables are numeric type.


