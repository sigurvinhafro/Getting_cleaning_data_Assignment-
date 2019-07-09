

if(!file.exists("data")) { #check and see if there is a data dir. if not, it creates it
  dir.create("data")
}

fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl, destfile = "./data/Dataset.zip")

dateDownloaded <- date()


unzip(zipfile="./data/Dataset.zip",exdir="./data") #unzip the data, creates a folder (UCI HAR Dataset)

list.files("./data/UCI HAR Dataset")# list all objects in folder


path = file.path("./data", "UCI HAR Dataset") ##define the path where the new folder has been unziped

files = list.files(path, recursive=TRUE)#create a file with all filenames
#show the files
files


### 1.  - Read text files into R
#Reading training tables 
xtrain = read.table(file.path(path, "train", "X_train.txt"),header = FALSE)
ytrain = read.table(file.path(path, "train", "y_train.txt"),header = FALSE)
subject_train = read.table(file.path(path, "train", "subject_train.txt"),header = FALSE)
#Reading the testing tables
xtest = read.table(file.path(path, "test", "X_test.txt"),header = FALSE)
ytest = read.table(file.path(path, "test", "y_test.txt"),header = FALSE)
subject_test = read.table(file.path(path, "test", "subject_test.txt"),header = FALSE)
#Read the features data
features = read.table(file.path(path, "features.txt"),header = FALSE)
#Read activity labels data
activityLabels = read.table(file.path(path, "activity_labels.txt"),header = FALSE)

##The files are in dissoray, we need to set column names and make sense of it all. This is OBJECT 4 of the assignment

colnames(xtrain) = features[,2] #set features to the columns from features.txt
colnames(ytrain) = "activityId" # set ID on ytrain
colnames(subject_train) = "subjectId"# set ID on subject
#Do the same for tests
colnames(xtest) = features[,2]
colnames(ytest) = "activityId"
colnames(subject_test) = "subjectId"
#create the same labels in the activity df so we can cross-ref.
colnames(activityLabels) <- c('activityId','activityType')


#and now we can do some analysis of the data, see #run_analysis.R
