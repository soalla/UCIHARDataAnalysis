if(!require("dplyr"))
{install.packages("dplyr")}
library(dplyr)

x_train<-read.table("X_train.txt",header=FALSE)
x_test<-read.table("X_test.txt",header=FALSE)
y_train<-read.table("Y_train.txt",header=FALSE)
y_test<-read.table("Y_test.txt",header=FALSE)
subject_train<-read.table("subject_train.txt",header=FALSE)
subject_test<-read.table("subject_test.txt",header=FALSE)
activity_labels<-read.table("activity_labels.txt",header=FALSE)
features<-read.table("features.txt",header=FALSE)
x<-rbind(x_train,x_test)
colnames(x)<-features[,2]
y<-rbind(y_train,y_test)
subject<-rbind(subject_train,subject_test)
DF<-cbind(y,x)
colnames(DF)[1]<-"activity"
DF<-cbind(subject,DF)
colnames(DF)[1]<-"subject"
DF$activity[DF$activity==1]<-"WALKING"
DF$activity[DF$activity==2]<-"WALKING_UPSTAIRS"
DF$activity[DF$activity==3]<-"WALKING_DOWNSTAIRS"
DF$activity[DF$activity==4]<-"SITTING"
DF$activity[DF$activity==5]<-"STANDING"
DF$activity[DF$activity==6]<-"LAYING"
colNames<-colnames(DF)
selColNames <- (colNames[((grepl("mean",colNames) & !grepl("meanFreq()", colNames)) | grepl("std",colNames) | grepl("subject",colNames) | grepl("activity",colNames)) == TRUE])
DF<-subset(DF,sel=selColNames)
DF<-DF %>% group_by(subject,activity) %>% summarise_each(funs(mean))
## Updating names to be more descriptive
ColNames<-colnames(DF)
colnames(DF)<-gsub("Acc","Accelerometer",ColNames)
ColNames<-colnames(DF)
colnames(DF)<-gsub("Gyro","Gyroscope",ColNames)
ColNames<-colnames(DF)
colnames(DF)<-gsub("mean","mean_of_means",ColNames)
ColNames<-colnames(DF)
colnames(DF)<-gsub("std","mean_of_stds",ColNames)
ColNames<-colnames(DF)
colnames(DF)<-gsub("Mag","Magnitude",ColNames)
write.table(DF,file= "TidyDF.txt",row.name=FALSE)
