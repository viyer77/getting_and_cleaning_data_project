#This R script called run_analysis.R that does the following

#Merges the training and the test sets to create one data set.
#Extracts only the measurements on the mean and standard deviation for each measurement.
#Uses descriptive activity names to name the activities in the data set
#Appropriately labels the data set with descriptive variable names.
#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.

#Download the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
if(!file.exists("CleaningDataProject"))
  dir.create("CleaningDataProject")
download.file(fileUrl,"CleaningDataProject/UCI_Har_DataSet.zip", method="curl") 

# unzip file

zipFile<- "CleaningDataProject/UCI_Har_DataSet.zip"
outDir<-"CleaningDataProject"
unzip(zipFile,exdir=outDir)

library(dplyr)
currPath <- getwd()

# Read training data
subjectTrain <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet/train","subject_train.txt"))
setTrain <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet/train","X_train.txt"))
labelsTrain <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet/train","y_train.txt"))

# Read test data
subjectTest <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet/test","subject_test.txt"))
setTest <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet/test","X_test.txt"))
labelsTest <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet/test","y_test.txt"))


# Merge test and training data
combinedData <- rbind(cbind(subjectTrain,setTrain,labelsTrain),cbind(subjectTest,setTest,labelsTest))

# Add column labels
features <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet","features.txt"),as.is=TRUE)
                       
colnames(combinedData) <- c("subjectId",features[,2],"activityId")

# Extract only the mean and stddev on each measurement
finalColNames <- grepl("mean|std|subjectId|activityId",colnames(combinedData))
combinedData <- combinedData[,finalColNames]

#Uses descriptive activity names to name the activities in the data set
activityLabels <- read.table(file.path(currPath,"CleaningDataProject/UCI Har DataSet","activity_labels.txt"))
colnames(activityLabels) <- c("activityId","activityName")

combinedData <-  merge(combinedData,activityLabels)

combinedData <- select(combinedData,-contains("activityId"))

#Appropriately labels the data set with descriptive variable names

colsOfCombinedData <- colnames(combinedData)


colsOfCombinedData <- gsub("Acc","Accelerometer",colsOfCombinedData)
colsOfCombinedData <- gsub("Gyro","Gyroscope",colsOfCombinedData)
colsOfCombinedData <- gsub("Mag","Magnitude",colsOfCombinedData)
colsOfCombinedData <- gsub("BodyBody","Body",colsOfCombinedData)
colsOfCombinedData <- gsub("Freq","Frequency",colsOfCombinedData)
colsOfCombinedData <- gsub("mean","Mean",colsOfCombinedData)
colsOfCombinedData <- gsub("std","StandardDeviation",colsOfCombinedData)
colsOfCombinedData <- gsub("[\\(\\)-]","",colsOfCombinedData)
colsOfCombinedData <- gsub("^t","time",colsOfCombinedData)
colsOfCombinedData <- gsub("^f","frequency",colsOfCombinedData)



colnames(combinedData) <- colsOfCombinedData

#From the data set in step 4, creates a second, independent tidy data set 
#with the average of each variable for each activity and each subject.


tidyData <- combinedData %>% group_by(activityName,subjectId) %>% summarise_all(funs(mean))


write.table(tidyData,"tidyData.txt",quote = FALSE,row.names = FALSE)




