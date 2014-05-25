Run_analysis script
=========

This script consist of decision 5 tasks
- Merges the training and the test sets to create one data set.
- 
-  Extracts only the measurements on the mean and standard deviation for each measurement. 
-  
-  Uses descriptive activity names to name the activities in the data set
-  
-  Appropriately labels the data set with descriptive activity names. 
-  
-  Creates a second, independent tidy data set with the average of each variable for each activity and each subject. 


>  In first part we create tidy database form raw files in test and train folders, which we have downloaded from [https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip] After reading and concatinating data from different files i put result in <b>tidy_data</b>.<br><br>

>  In second part i extract measurments on the mean and standard deviation only.<b> Not meanfreq()!</b>. Only mean() and std() functions. Also i fix names of the variables to more readable form. <br><br>

>  In third part i change activity values from nubmers to labels. I took it form activity_labels.txt and put it into tidy_data. Also i make special temporary variable id for keep order while i make the substituion. <br><br>

>  And in the last part i create new tidy_data,which i call out. There you can find the the mean for every value each subject,each activity. The interaction of subjects and activities you may find in variable <b> S </b>. And last step is writing my database in text file "output.txt". You my find codebbok of this new database in Codebook.md



