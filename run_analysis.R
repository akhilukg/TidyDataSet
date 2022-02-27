##downloading and unzipping data from the URL
if (!file.exists("./Course3RawData")) {
    dir.create("./Course3RawData")
    download.file(url = "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip",
                  destfile = "./Course3RawData/RawData.zip")
    unzip(zipfile = "./Course3RawData/RawData.zip",exdir="./Course3RawData") 
} 

path<- file.path("./Course3RawData" , "UCI HAR Dataset")

#merging train,test data
X_test <- read.table(file.path(path, "test" , "X_test.txt" ))
X_train <- read.table(file.path(path, "train", "X_train.txt"))

y_test  <- read.table(file.path(path, "test" , "y_test.txt" ))
y_train <- read.table(file.path(path, "train", "y_train.txt"))

s_train <- read.table(file.path(path, "train", "subject_train.txt"))
s_test  <- read.table(file.path(path, "test" , "subject_test.txt"))

s_data<- rbind(s_train,s_test)
y_data<- rbind(y_train,y_test)
X_data<- rbind(X_train,X_test)

names(s_data)<-c("Subject")
names(y_data)<-c("Activity")
feature_names <- read.table(file.path(path, "features.txt"), head=FALSE)
names(X_data)<- feature_names$V2

dataCombine <- cbind(s_data,y_data)
Data <- cbind(X_data, dataCombine)

##extracting cols and names with "mean" and "std"
selectedCols <- grep("-(mean()|std())", as.character(feature_names[,2]))
selectedColNames <- feature_names[selectedCols, 2]
selectedNames<-c(as.character(selectedColNames), "Subject", "Activity" )
Data <-subset(Data , select=selectedNames)

activityLabels <- read.table(file.path(path, "activity_labels.txt"),header = FALSE)
Data$Activity <- factor(Data$Activity, levels = activityLabels[,1], labels = activityLabels[,2])
Data$Subject <- as.factor(Data$Subject)

names(Data)<-gsub("^t","Time", names(Data))
names(Data)<-gsub("^f","Frequency", names(Data))
names(Data)<-gsub("Acc","Accelerometer", names(Data))
names(Data)<-gsub("Gyro","Gyroscope", names(Data))
names(Data)<-gsub("Mag", "Magnitude", names(Data))
names(Data)<-gsub("BodyBody","Body", names(Data))
names(Data)<-gsub("-mean","Mean",names(Data))
names(Data)<-gsub("-std","Std", names(Data))
names(Data)<-gsub("[-()]","", names(Data))
names(Data)<-gsub("tBody","TimeBody", names(Data))
names(Data)<-gsub("-freq","Frequency", names(Data), ignore.case = TRUE)

library(plyr);
TidyData<-aggregate(. ~Subject + Activity, Data, mean)
TidyData<-TidyData[order(TidyData$Subject,TidyData$Activity),]
write.table(TidyData, file = "TidyDataSet.txt", quote= FALSE)