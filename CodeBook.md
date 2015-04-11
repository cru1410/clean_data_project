## CODE BOOK 

Using the data obtained from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip], the following transformations and calculations was performed to clean up the data using 'run_analysis.R':

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.

This tidy data set was output to a file named 'tidyset.txt'. 

The next section provides a data dictionary for each variable in 'tidyset.txt'.


## DATA DICTIONARY (tidyset.txt)

|Variable Name|Unit|Description of the Variable|
|---|---|---|
|BodyLinearAccelerationXaxisTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration in the X direction time domain signals - Mean Value|
|BodyLinearAccelerationYaxisTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration in the Y direction time domain signals - Mean Value|
|BodyLinearAccelerationZaxisTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration in the Z direction time domain signals - Mean Value|
|BodyLinearAccelerationXaxisTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration in the X direction time domain signals - Standard Deviation|
|BodyLinearAccelerationYaxisTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration in the Y direction time domain signals - Standard Deviation|
|BodyLinearAccelerationZaxisTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration in the Z direction time domain signals - Standard Deviation|
|GravityLinearAccelerationXaxisTimeDomainMeanValue|standard gravity units 'g'|Gravity Linear Acceleration in the X direction time domain signals - Mean Value|
|GravityLinearAccelerationYaxisTimeDomainMeanValue|standard gravity units 'g'|Gravity Linear Acceleration in the Y direction time domain signals - Mean Value|
|GravityLinearAccelerationZaxisTimeDomainMeanValue|standard gravity units 'g'|Gravity Linear Acceleration in the Z direction time domain signals - Mean Value|
|GravityLinearAccelerationXaxisTimeDomainStandardDeviation|standard gravity units 'g'|Gravity Linear Acceleration in the X direction time domain signals - Standard Deviation|
|GravityLinearAccelerationYaxisTimeDomainStandardDeviation|standard gravity units 'g'|Gravity Linear Acceleration in the Y direction time domain signals - Standard Deviation|
|GravityLinearAccelerationZaxisTimeDomainStandardDeviation|standard gravity units 'g'|Gravity Linear Acceleration in the Z direction time domain signals - Standard Deviation|
|BodyLinearAccelerationJerkXaxisTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the X direction time domain signals - Mean Value|
|BodyLinearAccelerationJerkYaxisTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Y direction time domain signals - Mean Value|
|BodyLinearAccelerationJerkZaxisTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Z direction time domain signals - Mean Value|
|BodyLinearAccelerationJerkXaxisTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the X direction time domain signals - Standard Deviation|
|BodyLinearAccelerationJerkYaxisTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Y direction time domain signals - Standard Deviation|
|BodyLinearAccelerationJerkZaxisTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Z direction time domain signals - Standard Deviation|
|BodyAngularVelocityXaxisTimeDomainMeanValue|radians/second|Body Angular Velocity in the X direction time domain signals - Mean Value|
|BodyAngularVelocityYaxisTimeDomainMeanValue|radians/second|Body Angular Velocity in the Y direction time domain signals - Mean Value|
|BodyAngularVelocityZaxisTimeDomainMeanValue|radians/second|Body Angular Velocity in the Z direction time domain signals - Mean Value|
|BodyAngularVelocityXaxisTimeDomainStandardDeviation|radians/second|Body Angular Velocity in the X direction time domain signals - Standard Deviation|
|BodyAngularVelocityYaxisTimeDomainStandardDeviation|radians/second|Body Angular Velocity in the Y direction time domain signals - Standard Deviation|
|BodyAngularVelocityZaxisTimeDomainStandardDeviation|radians/second|Body Angular Velocity in the Z direction time domain signals - Standard Deviation|
|BodyAngularVelocityJerkXaxisTimeDomainMeanValue|radians/second|Body Angular Velocity Jerk signal in the X direction time domain signals - Mean Value|
|BodyAngularVelocityJerkYaxisTimeDomainMeanValue|radians/second|Body Angular Velocity Jerk signal in the Y direction time domain signals - Mean Value|
|BodyAngularVelocityJerkZaxisTimeDomainMeanValue|radians/second|Body Angular Velocity Jerk signal in the Z direction time domain signals - Mean Value|
|BodyAngularVelocityJerkXaxisTimeDomainStandardDeviation|radians/second|Body Angular Velocity Jerk signal in the X direction time domain signals - Standard Deviation|
|BodyAngularVelocityJerkYaxisTimeDomainStandardDeviation|radians/second|Body Angular Velocity Jerk signal in the Y direction time domain signals - Standard Deviation|
|BodyAngularVelocityJerkZaxisTimeDomainStandardDeviation|radians/second|Body Angular Velocity Jerk signal in the Z direction time domain signals - Standard Deviation|
|BodyLinearAccelerationEuclideanNormTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration using the Euclidean Norm time domain signals - Mean Value|
|BodyLinearAccelerationEuclideanNormTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration using the Euclidean Norm time domain signals - Standard Deviation|
|GravityLinearAccelerationEuclideanNormTimeDomainMeanValue|standard gravity units 'g'|Gravity Linear Acceleration using the Euclidean Norm time domain signals - Mean Value|
|GravityLinearAccelerationEuclideanNormTimeDomainStandardDeviation|standard gravity units 'g'|Gravity Linear Acceleration using the Euclidean Norm time domain signals - Standard Deviation|
|BodyLinearAccelerationJerkEuclideanNormTimeDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal using the Euclidean Norm time domain signals - Mean Value|
|BodyLinearAccelerationJerkEuclideanNormTimeDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal using the Euclidean Norm time domain signals - Standard Deviation|
|BodyAngularVelocityEuclideanNormTimeDomainMeanValue|standard gravity units 'g'|Body Angular Velocity using the Euclidean Norm time domain signals - Mean Value|
|BodyAngularVelocityEuclideanNormTimeDomainStandardDeviation|standard gravity units 'g'|Body Angular Velocity using the Euclidean Norm time domain signals - Standard Deviation|
|BodyAngularVelocityJerkEuclideanNormTimeDomainMeanValue|standard gravity units 'g'|Body Angular Velocity Jerk signal using the Euclidean Norm time domain signals - Mean Value|
|BodyAngularVelocityJerkEuclideanNormTimeDomainStandardDeviation|standard gravity units 'g'|Body Angular Velocity Jerk signal using the Euclidean Norm time domain signals - Standard Deviation|
|BodyLinearAccelerationXaxisFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration in the X directionfrequency domain signals - Mean Value|
|BodyLinearAccelerationYaxisFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration in the Y directionfrequency domain signals - Mean Value|
|BodyLinearAccelerationZaxisFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration in the Z directionfrequency domain signals - Mean Value|
|BodyLinearAccelerationXaxisFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration in the X directionfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationYaxisFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration in the Y directionfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationZaxisFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration in the Z directionfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationXaxisFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration in the X directionfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationYaxisFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration in the Y directionfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationZaxisFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration in the Z directionfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationJerkXaxisFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the X directionfrequency domain signals - Mean Value|
|BodyLinearAccelerationJerkYaxisFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Y directionfrequency domain signals - Mean Value|
|BodyLinearAccelerationJerkZaxisFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Z directionfrequency domain signals - Mean Value|
|BodyLinearAccelerationJerkXaxisFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the X directionfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationJerkYaxisFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Y directionfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationJerkZaxisFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Z directionfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationJerkXaxisFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the X directionfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationJerkYaxisFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Y directionfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationJerkZaxisFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration Jerk signal in the Z directionfrequency domain signals - Mean Frequency|
|BodyAngularVelocityXaxisFrequencyDomainMeanValue|radians/second|Body Angular Velocity in the X directionfrequency domain signals - Mean Value|
|BodyAngularVelocityYaxisFrequencyDomainMeanValue|radians/second|Body Angular Velocity in the Y directionfrequency domain signals - Mean Value|
|BodyAngularVelocityZaxisFrequencyDomainMeanValue|radians/second|Body Angular Velocity in the Z directionfrequency domain signals - Mean Value|
|BodyAngularVelocityXaxisFrequencyDomainStandardDeviation|radians/second|Body Angular Velocity in the X directionfrequency domain signals - Standard Deviation|
|BodyAngularVelocityYaxisFrequencyDomainStandardDeviation|radians/second|Body Angular Velocity in the Y directionfrequency domain signals - Standard Deviation|
|BodyAngularVelocityZaxisFrequencyDomainStandardDeviation|radians/second|Body Angular Velocity in the Z directionfrequency domain signals - Standard Deviation|
|BodyAngularVelocityXaxisFrequencyDomainMeanFrequency|radians/second|Body Angular Velocity in the X directionfrequency domain signals - Mean Frequency|
|BodyAngularVelocityYaxisFrequencyDomainMeanFrequency|radians/second|Body Angular Velocity in the Y directionfrequency domain signals - Mean Frequency|
|BodyAngularVelocityZaxisFrequencyDomainMeanFrequency|radians/second|Body Angular Velocity in the Z directionfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationEuclideanNormFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration using the Euclidean Normfrequency domain signals - Mean Value|
|BodyLinearAccelerationEuclideanNormFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration using the Euclidean Normfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationEuclideanNormFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration using the Euclidean Normfrequency domain signals - Mean Frequency|
|BodyLinearAccelerationJerkEuclideanNormFrequencyDomainMeanValue|standard gravity units 'g'|Body Linear Acceleration Jerk signal using the Euclidean Normfrequency domain signals - Mean Value|
|BodyLinearAccelerationJerkEuclideanNormFrequencyDomainStandardDeviation|standard gravity units 'g'|Body Linear Acceleration Jerk signal using the Euclidean Normfrequency domain signals - Standard Deviation|
|BodyLinearAccelerationJerkEuclideanNormFrequencyDomainMeanFrequency|standard gravity units 'g'|Body Linear Acceleration Jerk signal using the Euclidean Normfrequency domain signals - Mean Frequency|
|BodyAngularVelocityEuclideanNormFrequencyDomainMeanValue|radians/second|Body Angular Velocity using the Euclidean Normfrequency domain signals - Mean Value|
|BodyAngularVelocityEuclideanNormFrequencyDomainStandardDeviation|radians/second|Body Angular Velocity using the Euclidean Normfrequency domain signals - Standard Deviation|
|BodyAngularVelocityEuclideanNormFrequencyDomainMeanFrequency|radians/second|Body Angular Velocity using the Euclidean Normfrequency domain signals - Mean Frequency|
|BodyAngularVelocityJerkEuclideanNormFrequencyDomainMeanValue|radians/second|Body Angular Velocity Jerk signal using the Euclidean Normfrequency domain signals - Mean Value|
|BodyAngularVelocityJerkEuclideanNormFrequencyDomainStandardDeviation|radians/second|Body Angular Velocity Jerk signal using the Euclidean Normfrequency domain signals - Standard Deviation|
|BodyAngularVelocityJerkEuclideanNormFrequencyDomainMeanFrequency|radians/second|Body Angular Velocity Jerk signal using the Euclidean Normfrequency domain signals - Mean Frequency|

## How the Variable Names of the Extracted Measurements were Renamed

|Original Variable Names|Variable Names Renamed to be more descriptive|
|---|---|
|tBodyAcc-mean()-X|BodyLinearAccelerationXaxisTimeDomainMeanValue|
|tBodyAcc-mean()-Y|BodyLinearAccelerationYaxisTimeDomainMeanValue|
|tBodyAcc-mean()-Z|BodyLinearAccelerationZaxisTimeDomainMeanValue|
|tBodyAcc-std()-X|BodyLinearAccelerationXaxisTimeDomainStandardDeviation|
|tBodyAcc-std()-Y|BodyLinearAccelerationYaxisTimeDomainStandardDeviation|
|tBodyAcc-std()-Z|BodyLinearAccelerationZaxisTimeDomainStandardDeviation|
|tGravityAcc-mean()-X|GravityLinearAccelerationXaxisTimeDomainMeanValue|
|tGravityAcc-mean()-Y|GravityLinearAccelerationYaxisTimeDomainMeanValue|
|tGravityAcc-mean()-Z|GravityLinearAccelerationZaxisTimeDomainMeanValue|
|tGravityAcc-std()-X|GravityLinearAccelerationXaxisTimeDomainStandardDeviation|
|tGravityAcc-std()-Y|GravityLinearAccelerationYaxisTimeDomainStandardDeviation|
|tGravityAcc-std()-Z|GravityLinearAccelerationZaxisTimeDomainStandardDeviation|
|tBodyAccJerk-mean()-X|BodyLinearAccelerationJerkXaxisTimeDomainMeanValue|
|tBodyAccJerk-mean()-Y|BodyLinearAccelerationJerkYaxisTimeDomainMeanValue|
|tBodyAccJerk-mean()-Z|BodyLinearAccelerationJerkZaxisTimeDomainMeanValue|
|tBodyAccJerk-std()-X|BodyLinearAccelerationJerkXaxisTimeDomainStandardDeviation|
|tBodyAccJerk-std()-Y|BodyLinearAccelerationJerkYaxisTimeDomainStandardDeviation|
|tBodyAccJerk-std()-Z|BodyLinearAccelerationJerkZaxisTimeDomainStandardDeviation|
|tBodyGyro-mean()-X|BodyAngularVelocityXaxisTimeDomainMeanValue|
|tBodyGyro-mean()-Y|BodyAngularVelocityYaxisTimeDomainMeanValue|
|tBodyGyro-mean()-Z|BodyAngularVelocityZaxisTimeDomainMeanValue|
|tBodyGyro-std()-X|BodyAngularVelocityXaxisTimeDomainStandardDeviation|
|tBodyGyro-std()-Y|BodyAngularVelocityYaxisTimeDomainStandardDeviation|
|tBodyGyro-std()-Z|BodyAngularVelocityZaxisTimeDomainStandardDeviation|
|tBodyGyroJerk-mean()-X|BodyAngularVelocityJerkXaxisTimeDomainMeanValue|
|tBodyGyroJerk-mean()-Y|BodyAngularVelocityJerkYaxisTimeDomainMeanValue|
|tBodyGyroJerk-mean()-Z|BodyAngularVelocityJerkZaxisTimeDomainMeanValue|
|tBodyGyroJerk-std()-X|BodyAngularVelocityJerkXaxisTimeDomainStandardDeviation|
|tBodyGyroJerk-std()-Y|BodyAngularVelocityJerkYaxisTimeDomainStandardDeviation|
|tBodyGyroJerk-std()-Z|BodyAngularVelocityJerkZaxisTimeDomainStandardDeviation|
|tBodyAccMag-mean()|BodyLinearAccelerationEuclideanNormTimeDomainMeanValue|
|tBodyAccMag-std()|BodyLinearAccelerationEuclideanNormTimeDomainStandardDeviation|
|tGravityAccMag-mean()|GravityLinearAccelerationEuclideanNormTimeDomainMeanValue|
|tGravityAccMag-std()|GravityLinearAccelerationEuclideanNormTimeDomainStandardDeviation|
|tBodyAccJerkMag-mean()|BodyLinearAccelerationJerkEuclideanNormTimeDomainMeanValue|
|tBodyAccJerkMag-std()|BodyLinearAccelerationJerkEuclideanNormTimeDomainStandardDeviation|
|tBodyGyroMag-mean()|BodyAngularVelocityEuclideanNormTimeDomainMeanValue|
|tBodyGyroMag-std()|BodyAngularVelocityEuclideanNormTimeDomainStandardDeviation|
|tBodyGyroJerkMag-mean()|BodyAngularVelocityJerkEuclideanNormTimeDomainMeanValue|
|tBodyGyroJerkMag-std()|BodyAngularVelocityJerkEuclideanNormTimeDomainStandardDeviation|
|fBodyAcc-mean()-X|BodyLinearAccelerationXaxisFrequencyDomainMeanValue|
|fBodyAcc-mean()-Y|BodyLinearAccelerationYaxisFrequencyDomainMeanValue|
|fBodyAcc-mean()-Z|BodyLinearAccelerationZaxisFrequencyDomainMeanValue|
|fBodyAcc-std()-X|BodyLinearAccelerationXaxisFrequencyDomainStandardDeviation|
|fBodyAcc-std()-Y|BodyLinearAccelerationYaxisFrequencyDomainStandardDeviation|
|fBodyAcc-std()-Z|BodyLinearAccelerationZaxisFrequencyDomainStandardDeviation|
|fBodyAcc-meanFreq()-X|BodyLinearAccelerationXaxisFrequencyDomainMeanFrequency|
|fBodyAcc-meanFreq()-Y|BodyLinearAccelerationYaxisFrequencyDomainMeanFrequency|
|fBodyAcc-meanFreq()-Z|BodyLinearAccelerationZaxisFrequencyDomainMeanFrequency|
|fBodyAccJerk-mean()-X|BodyLinearAccelerationJerkXaxisFrequencyDomainMeanValue|
|fBodyAccJerk-mean()-Y|BodyLinearAccelerationJerkYaxisFrequencyDomainMeanValue|
|fBodyAccJerk-mean()-Z|BodyLinearAccelerationJerkZaxisFrequencyDomainMeanValue|
|fBodyAccJerk-std()-X|BodyLinearAccelerationJerkXaxisFrequencyDomainStandardDeviation|
|fBodyAccJerk-std()-Y|BodyLinearAccelerationJerkYaxisFrequencyDomainStandardDeviation|
|fBodyAccJerk-std()-Z|BodyLinearAccelerationJerkZaxisFrequencyDomainStandardDeviation|
|fBodyAccJerk-meanFreq()-X|BodyLinearAccelerationJerkXaxisFrequencyDomainMeanFrequency|
|fBodyAccJerk-meanFreq()-Y|BodyLinearAccelerationJerkYaxisFrequencyDomainMeanFrequency|
|fBodyAccJerk-meanFreq()-Z|BodyLinearAccelerationJerkZaxisFrequencyDomainMeanFrequency|
|fBodyGyro-mean()-X|BodyAngularVelocityXaxisFrequencyDomainMeanValue|
|fBodyGyro-mean()-Y|BodyAngularVelocityYaxisFrequencyDomainMeanValue|
|fBodyGyro-mean()-Z|BodyAngularVelocityZaxisFrequencyDomainMeanValue|
|fBodyGyro-std()-X|BodyAngularVelocityXaxisFrequencyDomainStandardDeviation|
|fBodyGyro-std()-Y|BodyAngularVelocityYaxisFrequencyDomainStandardDeviation|
|fBodyGyro-std()-Z|BodyAngularVelocityZaxisFrequencyDomainStandardDeviation|
|fBodyGyro-meanFreq()-X|BodyAngularVelocityXaxisFrequencyDomainMeanFrequency|
|fBodyGyro-meanFreq()-Y|BodyAngularVelocityYaxisFrequencyDomainMeanFrequency|
|fBodyGyro-meanFreq()-Z|BodyAngularVelocityZaxisFrequencyDomainMeanFrequency|
|fBodyAccMag-mean()|BodyLinearAccelerationEuclideanNormFrequencyDomainMeanValue|
|fBodyAccMag-std()|BodyLinearAccelerationEuclideanNormFrequencyDomainStandardDeviation|
|fBodyAccMag-meanFreq()|BodyLinearAccelerationEuclideanNormFrequencyDomainMeanFrequency|
|fBodyBodyAccJerkMag-mean()|BodyLinearAccelerationJerkEuclideanNormFrequencyDomainMeanValue|
|fBodyBodyAccJerkMag-std()|BodyLinearAccelerationJerkEuclideanNormFrequencyDomainStandardDeviation|
|fBodyBodyAccJerkMag-meanFreq()|BodyLinearAccelerationJerkEuclideanNormFrequencyDomainMeanFrequency|
|fBodyBodyGyroMag-mean()|BodyAngularVelocityEuclideanNormFrequencyDomainMeanValue|
|fBodyBodyGyroMag-std()|BodyAngularVelocityEuclideanNormFrequencyDomainStandardDeviation|
|fBodyBodyGyroMag-meanFreq()|BodyAngularVelocityEuclideanNormFrequencyDomainMeanFrequency|
|fBodyBodyGyroJerkMag-mean()|BodyAngularVelocityJerkEuclideanNormFrequencyDomainMeanValue|
|fBodyBodyGyroJerkMag-std()|BodyAngularVelocityJerkEuclideanNormFrequencyDomainStandardDeviation|
|fBodyBodyGyroJerkMag-meanFreq()|BodyAngularVelocityJerkEuclideanNormFrequencyDomainMeanFrequency|
