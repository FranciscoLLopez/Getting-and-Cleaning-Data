## Step 0. Set up environment.For windows.

setwd("D:/Cleaning_data/semana3/peer_assessment")
if(!file.exists("./dataset")){dir.create("./dataset")}
fileUrl <- "https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip"
download.file(fileUrl,destfile="./dataset/Dataset.zip")
unzip(zipfile="./dataset/Dataset.zip",exdir="./dataset")

install.packages("dplyr")
install.packages("reshape2")
install.packages("data.table")

library(dplyr)
library(reshape2)
library(data.table)

##################################################################################
# Step 1.

#Train dataset
subjects.train <- read.table("./dataset/UCI HAR Dataset/train/subject_train.txt",header = FALSE,
                       col.names = c("id"),
                       colClasses = "integer")


activities.train <- read.table("./dataset/UCI HAR Dataset/train/y_train.txt", 
                         header = FALSE,
                         col.names = c("activity"), 
                         colClasses = "factor")

x.train <- read.fwf("./dataset/UCI HAR Dataset/train/X_train.txt",
                  rep(16, times=561), 
                  header = FALSE,
                  colClasses = "numeric",
                  buffersize = 250)


train.dataset <- cbind(subjects.train, activities.train, x.train)

# Test dataset
subjects.test<- read.table("./dataset/UCI HAR Dataset/test/subject_test.txt",header = FALSE,
                             col.names = c("id"),
                             colClasses = "integer")


activities.test <- read.table("./dataset/UCI HAR Dataset/test/y_test.txt", 
                               header = FALSE,
                               col.names = c("activity"), 
                               colClasses = "factor")

x.test <- read.fwf("./dataset/UCI HAR Dataset/test/X_test.txt",
                    rep(16, times=561), 
                    header = FALSE,
                    colClasses = "numeric",
                    buffersize = 250)


test.dataset <- cbind(subjects.test, activities.test, x.test)

total.dataset <- rbind(train.dataset, test.dataset)

##################################################################################
# Step 2.Extracts only the measurements on the mean and standard deviation for each measurement. 
features.file <- read.table("./dataset/UCI HAR Dataset/features.txt", 
                            sep = " ", 
                            header = FALSE,
                            col.names = c("feature.id","feature.description"),
                            colClasses = c("factor","character"))

colnames(total.dataset) <- c("id", "activity", features.file$feature.description)

# Choosing columns to extract
column.names <- cbind(names(total.dataset))
column.table <- data.frame(column.names)
# mean columns
column.table$extract <- grepl("-mean", column.table$column.names)
# std columns
column.table$extract <- column.table$extract | grepl("-std", column.table$column.names)
column.table$extract[1:2] <- TRUE

total.dataset <- total.dataset[,column.table$extract]

##################################################################################
# Step 3. Uses descriptive activity names to name the activities in the data set

activity.labels.file <- read.table("./dataset/UCI HAR Dataset/activity_labels.txt", 
                                   sep = " ", 
                                   header = FALSE,
                                   col.names = c("activity","activity.desc"),
                                   colClasses = c("factor","factor"))
##################################################################################
# Step 4. Appropriately labels the data set with descriptive variable names. 

new.total.dataset <- merge(activity.labels.file, total.dataset, all=TRUE)

total.dataset <- new.total.dataset[,c(3,2,4:82)]



##################################################################################
# Step 5. From the data set in step 4, creates a second, independent tidy data set 
# with the average of each variable for each activity and each subject.

vector.column.names <- names(total.dataset)
vector.column.names <- vector.column.names[3:81]

dataset.melt <- melt(total.dataset,
                     id=c("id","activity.desc"),
                     measure.vars=vector.column.names)
# Create the new dataset
tidy.data <- dcast(dataset.melt, id + activity.desc ~ variable, mean)
# Sorting the dataset    
tidy.data <- arrange(tidy.data, id, activity.desc)

write.table(tidy.data, 
            "tidy_data.txt",
            sep=",",
            row.names = FALSE,
            quote = FALSE)





