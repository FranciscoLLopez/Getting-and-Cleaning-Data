Code Book
=========

The original data represent data collected from the accelerometers from the Samsung Galaxy S smartphone. 
A full description is available at the site where the data was obtained: 

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones 

The experiment has been carried out that involved 30 volunteers performing six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, researchers captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data.

## Variables
* id: The person's ID who made that kind of activity. Type: int
* activity.desc: The activity description performed. Type: Factor w/ 6 levels
* tBodyAcc-mean()-X. Type: num
* tBodyAcc-mean()-Y. Type: num
* tBodyAcc-mean()-Z. Type: num
* tBodyAcc-std()-X. Type: num
* tBodyAcc-std()-Y. Type: num
* tBodyAcc-std()-Z. Type: num
* tGravityAcc-mean()-X. Type: num
* tGravityAcc-mean()-Y. Type: num
* tGravityAcc-mean()-Z. Type: num
* tGravityAcc-std()-X. Type: num
* tGravityAcc-std()-Y. Type: num
* tGravityAcc-std()-Z. Type: num
* tBodyAccJerk-mean()-X. Type: num
* tBodyAccJerk-mean()-Y. Type: num
* tBodyAccJerk-mean()-Z. Type: num
* tBodyAccJerk-std()-X. Type: num
* tBodyAccJerk-std()-Y. Type: num
* tBodyAccJerk-std()-Z. Type: num
* tBodyGyro-mean()-X. Type: num
* tBodyGyro-mean()-Y. Type: num
* tBodyGyro-mean()-Z. Type: num
* tBodyGyro-std()-X. Type: num
* tBodyGyro-std()-Y. Type: num
* tBodyGyro-std()-Z. Type: num
* tBodyGyroJerk-mean()-X. Type: num
* tBodyGyroJerk-mean()-Y. Type: num
* tBodyGyroJerk-mean()-Z. Type: num
* tBodyGyroJerk-std()-X. Type: num
* tBodyGyroJerk-std()-Y. Type: num
* tBodyGyroJerk-std()-Z. Type: num
* tBodyAccMag-mean(). Type: num
* tBodyAccMag-std(). Type: num
* tGravityAccMag-mean(). Type: num
* tGravityAccMag-std(). Type: num
* tBodyAccJerkMag-mean(). Type: num
* tBodyAccJerkMag-std(). Type: num
* tBodyGyroMag-mean(). Type: num
* tBodyGyroMag-std(). Type: num
* tBodyGyroJerkMag-mean(). Type: num
* tBodyGyroJerkMag-std(). Type: num
* fBodyAcc-mean()-X. Type: num
* fBodyAcc-mean()-Y. Type: num
* fBodyAcc-mean()-Z. Type: num
* fBodyAcc-std()-X. Type: num
* fBodyAcc-std()-Y. Type: num
* fBodyAcc-std()-Z. Type: num
* fBodyAcc-meanFreq()-X. Type: num
* fBodyAcc-meanFreq()-Y. Type: num
* fBodyAcc-meanFreq()-Z. Type: num
* fBodyAccJerk-mean()-X. Type: num
* fBodyAccJerk-mean()-Y. Type: num
* fBodyAccJerk-mean()-Z. Type: num
* fBodyAccJerk-std()-X. Type: num
* fBodyAccJerk-std()-Y. Type: num
* fBodyAccJerk-std()-Z. Type: num
* fBodyAccJerk-meanFreq()-X. Type: num
* fBodyAccJerk-meanFreq()-Y. Type: num
* fBodyAccJerk-meanFreq()-Z. Type: num
* fBodyGyro-mean()-X. Type: num
* fBodyGyro-mean()-Y. Type: num
* fBodyGyro-mean()-Z. Type: num
* fBodyGyro-std()-X. Type: num
* fBodyGyro-std()-Y. Type: num
* fBodyGyro-std()-Z. Type: num
* fBodyGyro-meanFreq()-X. Type: num
* fBodyGyro-meanFreq()-Y. Type: num
* fBodyGyro-meanFreq()-Z. Type: num
* fBodyAccMag-mean(). Type: num
* fBodyAccMag-std(). Type: num
* fBodyAccMag-meanFreq(). Type: num
* fBodyBodyAccJerkMag-mean(). Type: num
* fBodyBodyAccJerkMag-std(). Type: num
* fBodyBodyAccJerkMag-meanFreq(). Type: num
* fBodyBodyGyroMag-mean(). Type: num
* fBodyBodyGyroMag-std(). Type: num
* fBodyBodyGyroMag-meanFreq(). Type: num
* fBodyBodyGyroJerkMag-mean(). Type: num
* fBodyBodyGyroJerkMag-std(). Type: num
* fBodyBodyGyroJerkMag-meanFreq(). Type: num

## Following transformation has been performed.

* Donwload the data from source and place on dataser folder.
* Merged the training and the test sets to create one data set.
* Extracts only the measurements on the mean and standard deviation for each measurement. 
* Uses descriptive activity names to name the activities in the data set
* Appropriately labels the data set with descriptive variable names.
* Created a second, independent tidy data set with the average of each variable for each activity and each subject. 




