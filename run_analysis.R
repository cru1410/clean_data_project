# Prepare tidy data collected from the accelerometers from the
# Samsung Galaxy S smartphone for later analysis.
#
# Raw data was downloaded from https://d396qusza40orc.cloudfront.net
#   /getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip
#
# This script assumes that the Samsung data is in the working directory.
#
# This script do the following:
# 1) Merges the training and the test sets to create one data set.
# 2) Uses descriptive activity names to name the activities in the data set.
# 3) Extracts only the mean and standard deviation for each measurement.
# 4) Appropriately labels the data set with descriptive variable names.
# 5) Creates an independent tidy data set with the average of each 
#    variable for each activity and each subject.
# 6) Output the tidy data set as a text file.

message("Loading library... "); flush.console()

suppressMessages(library(dplyr))

message("Reading data... "); flush.console()

df_activity_labels <- read.table("UCI HAR Dataset/activity_labels.txt")
names(df_activity_labels) <- c("ActivityCode","Activity")

# 1) Merges the training and the test sets to create one data set.

df_y_train <- read.table("UCI HAR Dataset/train/y_train.txt")
df_y_test <- read.table("UCI HAR Dataset/test/y_test.txt")
df_y_all <- bind_rows(df_y_train, df_y_test)
rm("df_y_train","df_y_test")
names(df_y_all) <- c("ActivityCode")

df_subject_train <- read.table("UCI HAR Dataset/train/subject_train.txt")
df_subject_test <- read.table("UCI HAR Dataset/test/subject_test.txt")
df_subject_all <- bind_rows(df_subject_train, df_subject_test)
rm("df_subject_train","df_subject_test")
names(df_subject_all) <- c("SubjectID")

df_x_train <- read.table("UCI HAR Dataset/train/X_train.txt", colClasses = "numeric")
df_x_test <- read.table("UCI HAR Dataset/test/X_test.txt", colClasses = "numeric")
df_x_all <- bind_rows(df_x_train, df_x_test)
rm("df_x_train","df_x_test")

message("Done reading data... Now processing data."); flush.console()

# 2) Uses descriptive activity names to name the activities in the data set.

df_features_labels <- read.table("UCI HAR Dataset/features.txt", stringsAsFactors=FALSE)
for (i in which(!duplicated(df_features_labels$V2) ) ) {
  # only replace with features labels if they are not duplicated
  colnames(df_x_all)[i] <- df_features_labels$V2[i] 
}
rm("i")

# 3) Extracts only the measurements on the mean and standard deviation for each measurement.

df_x_all_subset <- select(df_x_all, matches("-mean|-std") ) 
rm("df_x_all")

# Assemble the data subset

df_all <- left_join(df_y_all,df_activity_labels) %>%
  bind_cols(df_subject_all) %>%
  select( -ActivityCode) %>%
  bind_cols(df_x_all_subset) %>%
  tbl_df()
rm("df_y_all","df_x_all_subset")

# 4) Appropriately labels the data set with descriptive variable names.

colnames(df_all)[colnames(df_all)=="tBodyAcc-mean()-X"] <- "BodyLinearAccelerationXaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAcc-mean()-Y"] <- "BodyLinearAccelerationYaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAcc-mean()-Z"] <- "BodyLinearAccelerationZaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAcc-std()-X"] <- "BodyLinearAccelerationXaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAcc-std()-Y"] <- "BodyLinearAccelerationYaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAcc-std()-Z"] <- "BodyLinearAccelerationZaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tGravityAcc-mean()-X"] <- "GravityLinearAccelerationXaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tGravityAcc-mean()-Y"] <- "GravityLinearAccelerationYaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tGravityAcc-mean()-Z"] <- "GravityLinearAccelerationZaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tGravityAcc-std()-X"] <- "GravityLinearAccelerationXaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tGravityAcc-std()-Y"] <- "GravityLinearAccelerationYaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tGravityAcc-std()-Z"] <- "GravityLinearAccelerationZaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAccJerk-mean()-X"] <- "BodyLinearAccelerationJerkXaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAccJerk-mean()-Y"] <- "BodyLinearAccelerationJerkYaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAccJerk-mean()-Z"] <- "BodyLinearAccelerationJerkZaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAccJerk-std()-X"] <- "BodyLinearAccelerationJerkXaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAccJerk-std()-Y"] <- "BodyLinearAccelerationJerkYaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAccJerk-std()-Z"] <- "BodyLinearAccelerationJerkZaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyro-mean()-X"] <- "BodyAngularVelocityXaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyro-mean()-Y"] <- "BodyAngularVelocityYaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyro-mean()-Z"] <- "BodyAngularVelocityZaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyro-std()-X"] <- "BodyAngularVelocityXaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyro-std()-Y"] <- "BodyAngularVelocityYaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyro-std()-Z"] <- "BodyAngularVelocityZaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerk-mean()-X"] <- "BodyAngularVelocityJerkXaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerk-mean()-Y"] <- "BodyAngularVelocityJerkYaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerk-mean()-Z"] <- "BodyAngularVelocityJerkZaxisTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerk-std()-X"] <- "BodyAngularVelocityJerkXaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerk-std()-Y"] <- "BodyAngularVelocityJerkYaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerk-std()-Z"] <- "BodyAngularVelocityJerkZaxisTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAccMag-mean()"] <- "BodyLinearAccelerationEuclideanNormTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAccMag-std()"] <- "BodyLinearAccelerationEuclideanNormTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tGravityAccMag-mean()"] <- "GravityLinearAccelerationEuclideanNormTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tGravityAccMag-std()"] <- "GravityLinearAccelerationEuclideanNormTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyAccJerkMag-mean()"] <- "BodyLinearAccelerationJerkEuclideanNormTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyAccJerkMag-std()"] <- "BodyLinearAccelerationJerkEuclideanNormTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyroMag-mean()"] <- "BodyAngularVelocityEuclideanNormTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyroMag-std()"] <- "BodyAngularVelocityEuclideanNormTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerkMag-mean()"] <- "BodyAngularVelocityJerkEuclideanNormTimeDomainMeanValue"
colnames(df_all)[colnames(df_all)=="tBodyGyroJerkMag-std()"] <- "BodyAngularVelocityJerkEuclideanNormTimeDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAcc-mean()-X"] <- "BodyLinearAccelerationXaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAcc-mean()-Y"] <- "BodyLinearAccelerationYaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAcc-mean()-Z"] <- "BodyLinearAccelerationZaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAcc-std()-X"] <- "BodyLinearAccelerationXaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAcc-std()-Y"] <- "BodyLinearAccelerationYaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAcc-std()-Z"] <- "BodyLinearAccelerationZaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAcc-meanFreq()-X"] <- "BodyLinearAccelerationXaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyAcc-meanFreq()-Y"] <- "BodyLinearAccelerationYaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyAcc-meanFreq()-Z"] <- "BodyLinearAccelerationZaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-mean()-X"] <- "BodyLinearAccelerationJerkXaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-mean()-Y"] <- "BodyLinearAccelerationJerkYaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-mean()-Z"] <- "BodyLinearAccelerationJerkZaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-std()-X"] <- "BodyLinearAccelerationJerkXaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-std()-Y"] <- "BodyLinearAccelerationJerkYaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-std()-Z"] <- "BodyLinearAccelerationJerkZaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-meanFreq()-X"] <- "BodyLinearAccelerationJerkXaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-meanFreq()-Y"] <- "BodyLinearAccelerationJerkYaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyAccJerk-meanFreq()-Z"] <- "BodyLinearAccelerationJerkZaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyGyro-mean()-X"] <- "BodyAngularVelocityXaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyGyro-mean()-Y"] <- "BodyAngularVelocityYaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyGyro-mean()-Z"] <- "BodyAngularVelocityZaxisFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyGyro-std()-X"] <- "BodyAngularVelocityXaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyGyro-std()-Y"] <- "BodyAngularVelocityYaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyGyro-std()-Z"] <- "BodyAngularVelocityZaxisFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyGyro-meanFreq()-X"] <- "BodyAngularVelocityXaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyGyro-meanFreq()-Y"] <- "BodyAngularVelocityYaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyGyro-meanFreq()-Z"] <- "BodyAngularVelocityZaxisFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyAccMag-mean()"] <- "BodyLinearAccelerationEuclideanNormFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyAccMag-std()"] <- "BodyLinearAccelerationEuclideanNormFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyAccMag-meanFreq()"] <- "BodyLinearAccelerationEuclideanNormFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyBodyAccJerkMag-mean()"] <- "BodyLinearAccelerationJerkEuclideanNormFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyBodyAccJerkMag-std()"] <- "BodyLinearAccelerationJerkEuclideanNormFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyBodyAccJerkMag-meanFreq()"] <- "BodyLinearAccelerationJerkEuclideanNormFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyBodyGyroMag-mean()"] <- "BodyAngularVelocityEuclideanNormFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyBodyGyroMag-std()"] <- "BodyAngularVelocityEuclideanNormFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyBodyGyroMag-meanFreq()"] <- "BodyAngularVelocityEuclideanNormFrequencyDomainMeanFrequency"
colnames(df_all)[colnames(df_all)=="fBodyBodyGyroJerkMag-mean()"] <- "BodyAngularVelocityJerkEuclideanNormFrequencyDomainMeanValue"
colnames(df_all)[colnames(df_all)=="fBodyBodyGyroJerkMag-std()"] <- "BodyAngularVelocityJerkEuclideanNormFrequencyDomainStandardDeviation"
colnames(df_all)[colnames(df_all)=="fBodyBodyGyroJerkMag-meanFreq()"] <- "BodyAngularVelocityJerkEuclideanNormFrequencyDomainMeanFrequency"

# 5) Creates an independent tidy data set with the average of each 
#    variable for each activity and each subject.

df_avg <- df_all %>% 
  group_by(Activity, SubjectID) %>%
  summarise_each(funs(mean))

# 6) Output the tidy data set as a text file.

write.table(df_avg, file="tidyset.txt", row.name=FALSE)

message("Done... Output the tidy data set as \"tidyset.txt\""); flush.console()
