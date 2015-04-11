
README for Getting and Cleaning Data Course Project folder
-----------------------------------------------------

Note: These functions were written and tested on Windows machines running R version 3.1.3 (2015-03-09) -- "Smooth Sidewalk"
Copyright (C) 2015 The R Foundation for Statistical Computing
Platform: i386-w64-mingw32/i386 (32-bit)

and using the 'dplyr' library version ‘0.4.1'


## How the scripts work and how the files are connected


### run_analysis.R

This file contains the code that prepare tidy data that can be used for later analysis.

1. Merges the training and the test sets to create one data set.
2. Extracts only the measurements on the mean and standard deviation for each measurement. 
3. Uses descriptive activity names to name the activities in the data set
4. Appropriately labels the data set with descriptive variable names. 
5. From the data set in step 4, creates a second, independent tidy data set with the average of each variable for each activity and each subject.


### UCI HAR Dataset/activity_labels.txt

This file links the class labels with their activity name.


### UCI HAR Dataset/train/y_train.txt

This file contains labels for the training data. 


### UCI HAR Dataset/test/y_test.txt

This file contains labels for the test data. 


### UCI HAR Dataset/train/subject_train.txt

Associated for the training data, each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


### UCI HAR Dataset/test/subject_test.txt

Associated for the test data, each row identifies the subject who performed the activity for each window sample. Its range is from 1 to 30.


### UCI HAR Dataset/train/X_train.txt

This file is the training dataset.


### UCI HAR Dataset/test/X_test.txt

This file is the test dataset. 


### UCI HAR Dataset/features.txt

This file lists all the features. Further information of these variables used on the feature vector can be found in 'features_info.txt'.


### tidyset.txt

This file is created by running 'run_analysis.R' and is an independent tidy data set with the average of each variable for each activity and each subject. 


### CodeBook.md

This Markdown file describes the variables, the data, and any transformations or work performed to clean up the data. 



## To reproduce the results in tidyset.txt

Run 'run_analysis.R'.


Acknowledgement of the use of the data set
---------------------------------------

It is acknowledged that the dataset is provided from the following publication:

Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012

A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones

