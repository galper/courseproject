Codebook for database
=========
<br>

The features selected for first database come from the accelerometer and gyroscope 3-axial raw signals . These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals  using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals . Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm . 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAccXYZ, fBodyAccJerkXYZ, fBodyGyroXYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

I use results of 2 functions:
Mean: Mean value
Std: Standard deviation


In column names of our data we have all combinations of intersections subjects and activities.
We have 30 subjects, which numbered from 1 to 30, and 6 activities:

WALKING<br>
WALKING_UPSTAIRS<br>
WALKING_DOWNSTAIRS<br>
SITTING<br>
STANDING<br>
LAYING<br>

And then we calculate average of each variable for each activity and each subject. 
So average values are in our database.

##All variables:

tBodyAccMeanX<br>
tBodyAccMeanY<br>
tBodyAccMeanZ<br>
tBodyAccStdX<br>
tBodyAccStdY<br>
tBodyAccStdZ<br>
tGravityAccMeanX<br>
tGravityAccMeanY<br>
tGravityAccMeanZ<br>
tGravityAccStdX<br>
tGravityAccStdY<br>
tGravityAccStdZ<br>
tBodyAccJerkMeanX<br>
tBodyAccJerkMeanY<br>
tBodyAccJerkMeanZ<br>
tBodyAccJerkStdX<br>
tBodyAccJerkStdY<br>
tBodyAccJerkStdZ<br>
tBodyGyroMeanX<br>
tBodyGyroMeanY<br>
tBodyGyroMeanZ<br>
tBodyGyroStdX<br>
tBodyGyroStdY<br>
tBodyGyroStdZ<br>
tBodyGyroJerkMean<br>X
tBodyGyroJerkMeanY<br>
tBodyGyroJerkMeanZ<br>
tBodyGyroJerkStdX<br>
tBodyGyroJerkStdY<br>
tBodyGyroJerkStdZ<br>
tBodyAccmagMean<br>
tBodyAccmagStd<br>
tGravityAccmagMean<br>
tGravityAccmagStd<br>
tBodyAccJerkmagMean<br>
tBodyAccJerkmagStd<br>
tBodyGyromagMean<br>
tBodyGyromagStd<br>
tBodyGyroJerkmagMean<br>
tBodyGyroJerkmagStd<br>
fBodyAccMeanX<br>
fBodyAccMeanY<br>
fBodyAccMeanZ<br>
fBodyAccStdX<br>
fBodyAccStdY<br>
fBodyAccStdZ<br>
fBodyAccJerkMeanX<br>
fBodyAccJerkMeanY<br>
fBodyAccJerkMeanZ<br>
fBodyAccJerkStdX<br>
fBodyAccJerkStdY<br>
fBodyAccJerkStdZ<br>
fBodyGyroMeanX<br>
fBodyGyroMeanY<br>
fBodyGyroMeanZ<br>
fBodyGyroStdX<br>
fBodyGyroStdY<br>
fBodyGyroStdZ<br>
fBodyAccMagMean<br>
fBodyAccMagStd<br>
fBodyBodyAccJerkMagMean<br>
fBodyBodyAccJerkMagStd<br>
fBodyBodyGyroMagMean<br>
fBodyBodyGyroMagStd<br>
fBodyBodyGyroJerkMagMean<br>
fBodyBodyGyroJerkMagStd<br>

I use results of 2 functions:
Mean: Mean value
Std: Standard deviation


In column names of our data we have all combinations of intersections subjects and activities.
We have 30 subjects, which numbered from 1 to 30, and 6 activities:
WALKING
WALKING_UPSTAIRS
WALKING_DOWNSTAIRS
SITTING
STANDING
LAYING

And then we calculate average of each variable for each activity and each subject. 
So average values are in our database.


    