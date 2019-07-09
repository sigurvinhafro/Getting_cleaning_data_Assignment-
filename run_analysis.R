#Here we run analysis on the data collected in Download_files.R

#Merging the train and test data
merge_all_train = cbind(ytrain, subject_train, xtrain)
merge_all_test = cbind(ytest, subject_test, xtest)
#Create the main data table merging both table tables. OBJECT 1
All_data = rbind(merge_all_train, merge_all_test)
names(All_data)



colNames = colnames(All_data) #create a characterstring with all the values that are available
mean_std = (grepl("activityId" , colNames) | grepl("subjectId" , colNames) | grepl("mean.." , colNames) | grepl("std.." , colNames)) # we use the grep function to create a subset of all the mean and std and the corresponding activityID and subjectID 

Mean_and_STD <- All_data[ , mean_std == TRUE] #a subset of All_data that has only the mean and std values. OBJECT 2


ActivityNames = merge(Mean_and_STD, activityLabels, by='activityId', all.x=TRUE) #Use descriptive activity names to name the activities in the data set. OBJECT 3

str(ActivityNames)

#now we use these datasets to create a tidy data set using dplyr
library(dplyr)
TidyData <- ActivityNames %>%
  group_by(subjectId, activityId) %>%
  summarise_if(is.numeric, mean, na.rm = TRUE) %>% #we do not summarise the activityType column. 
  ungroup()

write.table(TidyData, "TidyData.txt", row.name=FALSE)
