## 1. Merging the training and the test sets to create one data set.
traindata <- read.table("./UCI HAR Dataset/train/X_train.txt")
testdata <- read.table("./UCI HAR Dataset/test/X_test.txt")
data <- rbind(traindata,testdata)


## 2. Extracting only the measurements on the mean and standard deviation for each measurement. 
featuresdata <- read.table("./UCI HAR Dataset/features.txt",sep="-",fill=TRUE)
positions <- which( as.character(featuresdata[,2])=="mean()" | as.character(featuresdata[,2])=="std()" )
data2 <- data[,positions]


## 3. Using descriptive activity names to name the activities in the data set

# Merging labels for the train and test data
trainlabels <- read.table("./UCI HAR Dataset/train/y_train.txt")
testlabels <- read.table("./UCI HAR Dataset/test/y_test.txt")
labels <- rbind(trainlabels,testlabels)

# Creates a column with descriptive activity labels and binds it at the end
labeldictionary <- read.table("./UCI HAR Dataset/activity_labels.txt")
for (j in 1:dim(labeldictionary)[[1]]){
        labels$V1 <- replace(labels$V1, which(labels==j), as.character(labeldictionary[j,2]))
}
data3 <- cbind(labels,data2)


## 4. Labelling the data set with descriptive variable names

varnames <- read.table("./UCI HAR Dataset/features.txt",
                           sep=" ",fill=FALSE)
colnames(data3) <- c("Activity", as.character(varnames[positions,]$V2))
data4 <- data3


## 5. Creating a second independent data set with the average of each variable
        # for each activity and each subject

# Merging subjects for the train and test data and binding as a column
trainsubjects <- read.table("./UCI HAR Dataset/train/subject_train.txt")
testsubjects <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subjects <- rbind(trainsubjects,testsubjects)

data5 <- cbind(subjects, data3)
colnames(data5)[1] <- "Subject"

# Grouping and averaging
library(dplyr)
tidydata <- group_by(data5, Activity, Subject)%>% summarise_each(funs(mean))


## EXPORTING
write.table(tidydata, "tidy_dataset.txt", row.names=FALSE)