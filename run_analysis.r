## Step 1 Merges the training and the test sets to create one data set.
        train_labels<-read.table("train/y_train.txt")
        train_data<-read.table("train/X_train.txt",header=FALSE)
        train_subject<-read.table("train/subject_train.txt")
        
        test_labels<-read.table("test/y_test.txt")
        test_data<-read.table("test/X_test.txt",header=FALSE)
        test_subject<-read.table("test/subject_test.txt")
        
        
        subject<-rbind(train_subject,test_subject)
        names(subject)="subject"
        
        labels<-rbind(train_labels,test_labels)
        names(labels)="activities"
        
        tidy_data<-rbind(train_data,test_data)
## Step 2 and 4 
        ## Extracts only the measurements on the mean and 
        ## standard deviation for each measurement
        ##Fix names colnames
        
        var_names<-read.table("features.txt")
        var_names[,2]<-tolower(var_names[,2])
        
        mean_names <- var_names[grepl("mean()",var_names[,2]),]
        mean_names <- mean_names[!grepl("meanfreq",mean_names[,2]),]
        mean_names <- mean_names[!grepl("tbodyaccmean",mean_names[,2]),]
        mean_names <- mean_names[!grepl("gravitymean",mean_names[,2]),]
        rownames(mean_names)=NULL
        
        std_names <- var_names[grepl("std()",var_names[,2]),]
        rownames(std_names)=NULL
        
        std_mean<-rbind(mean_names,std_names)
        std_mean<-std_mean[order(std_mean[1]),]
        names(std_mean)=c('id','names')
        
        for (i in 1:length(std_mean$names)) 
                {
                
                std_mean$names[i]<-gsub("\\()",'',std_mean$names[i])
                std_mean$names[i]<-gsub("body",'Body',std_mean$names[i])
                std_mean$names[i]<-gsub("acc",'Acc',std_mean$names[i])
                std_mean$names[i]<-gsub("mag",'Mag',std_mean$names[i])
                std_mean$names[i]<-gsub("gyro",'Gyro',std_mean$names[i])
                std_mean$names[i]<-gsub("jerk",'Jerk',std_mean$names[i])
                std_mean$names[i]<-gsub("gravity",'Gravity',std_mean$names[i])
                std_mean$names[i]<-gsub("-mean",'Mean',std_mean$names[i])
                std_mean$names[i]<-gsub("-std",'Std',std_mean$names[i])
                std_mean$names[i]<-gsub("-x",'X',std_mean$names[i])
                std_mean$names[i]<-gsub("-y",'Y',std_mean$names[i])
                std_mean$names[i]<-gsub("-z",'Z',std_mean$names[i])
                
                print(std_mean$names[i])
        }
        tidy_data<-tidy_data[,std_mean$id]
        names(tidy_data)<-std_mean$names
        tidy_data<-cbind(labels,subject,tidy_data)
        #head(tidy_data)
# Step 3 and 4 task
        ## Uses descriptive activity names to name the activities in the data set
        ## Fix activity colname
        activity_labels<-read.table("activity_labels.txt")
        names(activity_labels)=c("activities","activity")
        id<-1:nrow(tidy_data)
        names(id)="id"
        tidy_data<-cbind(id,tidy_data)
        tidy_data<-merge(activity_labels,tidy_data)
        tidy_data<-tidy_data[order(tidy_data$id), ]
        row.names(tidy_data)=NULL
        tidy_data$id=NULL
        tidy_data$activities=NULL
        #head(tidy_data)


#Step 5   
        ## Create new tidy_data  with the average of each variable 
        ## for each activity and each subject. 
        f<-interaction(tidy_data$activity,tidy_data$subject)
        s<-split(tidy_data,f)
        out<-sapply(s,function(tidy_data) colMeans(tidy_data[,3:length(tidy_data)]))
        write.table(out,"output.txt")
        #head(out)
        