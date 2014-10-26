---
title: "CodeBook"
output: html_document
---
================

---Data from original source---

The features selected for this database come from the accelerometer and gyroscope 3-axial signals. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals  using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals . Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm

---Udpated code book ---

subject - denotes id of the volunteer who was involved in the experiment. 30 volunteers within an age bracket of 19-48 years were involved in this experiment

Activity - Activity denotes the activity that each person performed. Each person performed below six activities wearing a smartphone (Samsung Galaxy S II) on the waist
 WALKING
 WALKING_UPSTAIRS
 WALKING_DOWNSTAIRS
 SITTING
 STANDING
 LAYING 

Variables starting with 't' to denote time domain signals
Variables starting with 'f' to indicate frequency domain signals 

X,Y,Z variables used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are: 

mean_of_means(): Mean value of means of raw values
mean_of_std(): mean of standard deviation of raw values

Acc in the original variable is replaced with 'Acceleration'

Tidy set has one observation per subject per activity per variable

Here is complete list of variables

 [1] "subject"                                            
 [2] "activity"                                           
 [3] "tBodyAccelerometer-mean_of_means()-X"               
 [4] "tBodyAccelerometer-mean_of_means()-Y"               
 [5] "tBodyAccelerometer-mean_of_means()-Z"               
 [6] "tBodyAccelerometer-mean_of_stds()-X"                
 [7] "tBodyAccelerometer-mean_of_stds()-Y"                
 [8] "tBodyAccelerometer-mean_of_stds()-Z"                
 [9] "tGravityAccelerometer-mean_of_means()-X"            
[10] "tGravityAccelerometer-mean_of_means()-Y"            
[11] "tGravityAccelerometer-mean_of_means()-Z"            
[12] "tGravityAccelerometer-mean_of_stds()-X"             
[13] "tGravityAccelerometer-mean_of_stds()-Y"             
[14] "tGravityAccelerometer-mean_of_stds()-Z"             
[15] "tBodyAccelerometerJerk-mean_of_means()-X"           
[16] "tBodyAccelerometerJerk-mean_of_means()-Y"           
[17] "tBodyAccelerometerJerk-mean_of_means()-Z"           
[18] "tBodyAccelerometerJerk-mean_of_stds()-X"            
[19] "tBodyAccelerometerJerk-mean_of_stds()-Y"            
[20] "tBodyAccelerometerJerk-mean_of_stds()-Z"            
[21] "tBodyGyroscope-mean_of_means()-X"                   
[22] "tBodyGyroscope-mean_of_means()-Y"                   
[23] "tBodyGyroscope-mean_of_means()-Z"                   
[24] "tBodyGyroscope-mean_of_stds()-X"                    
[25] "tBodyGyroscope-mean_of_stds()-Y"                    
[26] "tBodyGyroscope-mean_of_stds()-Z"                    
[27] "tBodyGyroscopeJerk-mean_of_means()-X"               
[28] "tBodyGyroscopeJerk-mean_of_means()-Y"               
[29] "tBodyGyroscopeJerk-mean_of_means()-Z"               
[30] "tBodyGyroscopeJerk-mean_of_stds()-X"                
[31] "tBodyGyroscopeJerk-mean_of_stds()-Y"                
[32] "tBodyGyroscopeJerk-mean_of_stds()-Z"                
[33] "tBodyAccelerometerMagnitude-mean_of_means()"        
[34] "tBodyAccelerometerMagnitude-mean_of_stds()"         
[35] "tGravityAccelerometerMagnitude-mean_of_means()"     
[36] "tGravityAccelerometerMagnitude-mean_of_stds()"      
[37] "tBodyAccelerometerJerkMagnitude-mean_of_means()"    
[38] "tBodyAccelerometerJerkMagnitude-mean_of_stds()"     
[39] "tBodyGyroscopeMagnitude-mean_of_means()"            
[40] "tBodyGyroscopeMagnitude-mean_of_stds()"             
[41] "tBodyGyroscopeJerkMagnitude-mean_of_means()"        
[42] "tBodyGyroscopeJerkMagnitude-mean_of_stds()"         
[43] "fBodyAccelerometer-mean_of_means()-X"               
[44] "fBodyAccelerometer-mean_of_means()-Y"               
[45] "fBodyAccelerometer-mean_of_means()-Z"               
[46] "fBodyAccelerometer-mean_of_stds()-X"                
[47] "fBodyAccelerometer-mean_of_stds()-Y"                
[48] "fBodyAccelerometer-mean_of_stds()-Z"                
[49] "fBodyAccelerometerJerk-mean_of_means()-X"           
[50] "fBodyAccelerometerJerk-mean_of_means()-Y"           
[51] "fBodyAccelerometerJerk-mean_of_means()-Z"           
[52] "fBodyAccelerometerJerk-mean_of_stds()-X"            
[53] "fBodyAccelerometerJerk-mean_of_stds()-Y"            
[54] "fBodyAccelerometerJerk-mean_of_stds()-Z"            
[55] "fBodyGyroscope-mean_of_means()-X"                   
[56] "fBodyGyroscope-mean_of_means()-Y"                   
[57] "fBodyGyroscope-mean_of_means()-Z"                   
[58] "fBodyGyroscope-mean_of_stds()-X"                    
[59] "fBodyGyroscope-mean_of_stds()-Y"                    
[60] "fBodyGyroscope-mean_of_stds()-Z"                    
[61] "fBodyAccelerometerMagnitude-mean_of_means()"        
[62] "fBodyAccelerometerMagnitude-mean_of_stds()"         
[63] "fBodyBodyAccelerometerJerkMagnitude-mean_of_means()"
[64] "fBodyBodyAccelerometerJerkMagnitude-mean_of_stds()" 
[65] "fBodyBodyGyroscopeMagnitude-mean_of_means()"        
[66] "fBodyBodyGyroscopeMagnitude-mean_of_stds()"         
[67] "fBodyBodyGyroscopeJerkMagnitude-mean_of_means()"    
[68] "fBodyBodyGyroscopeJerkMagnitude-mean_of_stds()"