UCIHARDataAnalysis
==================
Instructions for running script
-------------------------------
Please make sure to copy below files into working directory X_test.txt,X_train.test,y_test.txt,y_train.txt,subject_test.txt,subject_train.txt,features.txt,activity_labels.txt 

Comments about script:
-------------------------

-Training and test data sets for x and y, subject, features and activity_labels files are read into dataframes
-Training and test data is combined
-Subject and activity columns are added by using subject and y(activity) dataframes
-Activity labels are set (ID to name mapping)
-Variables that are mean and std deviation are filtered
-Created tidy set by summarizing means of variables for each subject for each activity
-Tidy data set output is written into file

Instructions for reading file
-----------------------------
Output file TidyDF.txt created by run_analysis.R script can be read and viewed using following commands
TidyDF<-read.table("TidyDF.txt",header=TRUE)
View(TidyDF)
