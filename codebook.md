Bryne Ulmschneider Getting and Cleaning data: Course Project
Summary of UCI Human Activty Recognition Using Smartphones Dataset 
========================================================
A brief description of the variables and how they were computed from the features_info.txt file included in the original codebook. 

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time).
Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ).

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag). These signals were used to estimate variables of the feature vector for each pattern:  

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 
-----------------------------------------------------------------------------------------------
The original data had many meaurements. The set of variables that were kept from the raw data from the raw data are: 
mean: Mean value
std: Standard deviation
------------------------------------------------------------------------------------------------
The complete list of variables: 
 [1] "tbodyaccmeanx"   : mean of mean body acc- x axis               
 [2] "tbodyaccmeany"   : mean of mean body acc- y axis             
 [3] "tbodyaccmeanz"   : mean of mean body acc- z axis             
 [4] "tgravityaccmeanx" : mean of mean gravity acc- x axis            
 [5] "tgravityaccmeany" : mean of mean gravity acc- y axis             
 [6] "tgravityaccmeanz" : mean of mean gravity acc- z axis           
 [7] "tbodyaccjerkmeanx" : mean of mean jerk (using linear acceleration + angular velocity) - x           
 [8] "tbodyaccjerkmeany" :  mean of mean jerk (using linear acceleration + angular velocity) - y            
 [9] "tbodyaccjerkmeanz":  mean of mean jerk (using linear acceleration + angular velocity) - z           
[10] "tbodygyromeanx" : mean of mean gyro - x axis
[11] "tbodygyromeany" : mean of mean gyro - y axis              
[12] "tbodygyromeanz" : mean of mean gyro - z axis             
[13] "tbodygyrojerkmeanx" : mean of mean jerk - x axis          
[14] "tbodygyrojerkmeany" : mean of mean jerk - y axis            
[15] "tbodygyrojerkmeanz" : mean of mean jerk - z axis           
[16] "tbodyaccmagmean" : mean of mean magnitude of acceleration (calculated from jerk-XYZ)             
[17] "tgravityaccmagmean" : mean of mean magnitude of gravity (calculated from jerk-XYZ)        
[18] "tbodyaccjerkmagmean" : mean of mean magnitude of jerk accel (calculated from jerk-XYZ)        
[19] "tbodygyromagmean" : mean of mean magnitude of gyro (calculated from jerk-XYZ)             
[20] "tbodygyrojerkmagmean" : mean of mean magnitude gyro-jerk (calculated from jerk-XYZ)         
[21] "fbodyaccmeanx" : mean of mean FFT - body acceleration - x axis              
[22] "fbodyaccmeany" : mean of mean FFT - body acceleration - y axis                
[23] "fbodyaccmeanz" : mean of mean FFT - body acceleration - z axis                
[24] "fbodyaccmeanfreqx" : mean of mean FFT - body acceleration frequency - x axis            
[25] "fbodyaccmeanfreqy" : mean of mean FFT - body acceleration - y axis            
[26] "fbodyaccmeanfreqz" : mean of mean FFT - body acceleration - z axis            
[27] "fbodyaccjerkmeanx" : mean of mean FFT - body - jerk- acceleration - x axis            
[28] "fbodyaccjerkmeany" : mean of mean FFT - body - jerk- acceleration - y axis           
[29] "fbodyaccjerkmeanz" : mean of mean FFT - body - jerk- acceleration - z axis           
[30] "fbodyaccjerkmeanfreqx": mean of mean FFT -jerk frequency - x axis      
[31] "fbodyaccjerkmeanfreqy": mean of mean FFT -jerk frequency - y axis       
[32] "fbodyaccjerkmeanfreqz" : mean of mean FFT -jerk frequency - z axis        
[33] "fbodygyromeanx" : mean of mean FFT - gyro measurement x- axis             
[34] "fbodygyromeany" : mean of mean FFT -gyro measurement - y axis              
[35] "fbodygyromeanz" : mean of mean FFT -gyro measurement - z axis              
[36] "fbodygyromeanfreqx": mean of mean FFT -gyro frequency - x axis          
[37] "fbodygyromeanfreqy": mean of mean FFT -gyro frequency - y axis           
[38] "fbodygyromeanfreqz": mean of mean FFT -gyro frequency - z axis           
[39] "fbodyaccmagmean" : mean of mean FFT body acceleration magniture             
[40] "fbodyaccmagmeanfreq" : mean of mean FFT body acceleration frequency         
[41] "fbodybodyaccjerkmagmean" : mean of mean FFT body acceleration- jerk magniture      
[42] "fbodybodyaccjerkmagmeanfreq":  mean of mean FFT body acceleration -jerk frequency
[43] "fbodybodygyromagmean" : mean of mean FFT body gyro frequency         
[44] "fbodybodygyromagmeanfreq" : mean of mean FFT body gyro frequency   
[45] "fbodybodygyrojerkmagmean" : mean of mean FFT body gyro-jerk magnitude    
[46] "fbodybodygyrojerkmagmeanfreq" : mean of mean FFT body gyro-jerk magnitude frequency 
[47] "tbodyaccstdx" : mean of standard deviation - body acceleration x axis                
[48] "tbodyaccstdy" : mean of standard deviation - body acceleration y axis                
[49] "tbodyaccstdz" : mean of standard deviation - body acceleration z axis                
[50] "tgravityaccstdx" : mean of standard deviation - gravity acceleration x axis              
[51] "tgravityaccstdy" : mean of standard deviation - gravity acceleration y axis            
[52] "tgravityaccstdz" : mean of standard deviation - gravity acceleration z axis              
[53] "tbodyaccjerkstdx" :mean of standard deviation - body acceleration jerk x axis              
[54] "tbodyaccjerkstdy" : mean of standard deviation - body acceleration jerk y axis           
[55] "tbodyaccjerkstdz" : mean of standard deviation - body acceleration jerk z axis            
[56] "tbodygyrostdx" : mean of standard deviation - body gyro - x axis                
[57] "tbodygyrostdy" : mean of standard deviation - body gyro - y axis              
[58] "tbodygyrostdz" : mean of standard deviation - body gyro - z axis                
[59] "tbodygyrojerkstdx": mean of standard deviation - body gyro jerk - x axis            
[60] "tbodygyrojerkstdy": mean of standard deviation - body gyro jerk - y axis           
[61] "tbodygyrojerkstdz": mean of standard deviation - body gyro jerl - z axis            
[62] "tbodyaccmagstd" : mean of standard deviation - body acceleration magnitude              
[63] "tgravityaccmagstd" : mean of standard deviation - gravity acceleration magnitude            
[64] "tbodyaccjerkmagstd" : mean of standard deviation - body acceleration jerk magnitude           
[65] "tbodygyromagstd" : mean of standard deviation body hyro magnitude             
[66] "tbodygyrojerkmagstd" : mean of standard deviation - body gyro jerk magnitude       
[67] "fbodyaccstdx" : mean of standard deviation - FFT body acceleration x-axis                 
[68] "fbodyaccstdy" : mean of standard deviation - FFT body acceleration y-axis                
[69] "fbodyaccstdz" : mean of standard deviation - FFT body acceleration z-axis               
[70] "fbodyaccjerkstdx" : mean of standard deviation - FFT body acceleration jerk - x-axis            
[71] "fbodyaccjerkstdy" : mean of standard deviation - FFT body acceleration jerk - y-axis            
[72] "fbodyaccjerkstdz" : mean of standard deviation - FFT body acceleration jerk - z-axis             
[73] "fbodygyrostdx" : mean of standard deviation - FFT body gyro - x-axis                
[74] "fbodygyrostdy" : mean of standard deviation - FFT body gyro - y-axis                 
[75] "fbodygyrostdz" : mean of standard deviation - FFT body gyro - z-axis               
[76] "fbodyaccmagstd" : mean of standard deviation - FFT body gyro - z-axis               
[77] "fbodybodyaccjerkmagstd": mean of standard deviation - FFT body acceleration jerk mag     
[78] "fbodybodygyromagstd": mean of standard deviation - FFT body gyro magnitude        
[79] "fbodybodygyrojerkmagstd" : mean of standard deviation - FFT body jerk magnitude    
[80] "activity" : description of actvity (walking, walking_upstairs, sitting etc. )                     
[81] "subject"   : subject number from 1-30 
