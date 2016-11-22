library(reshape2)

theURL <- ("https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip")
z <- tempfile()
download.file(theURL, z)

dftest_labels <- read.table(unz(z,"y_train.txt"))
dftest_set <- read.table(unz(z,"X_test.txt"))
dftrain_set <- read.table(unz(z,"X_train.txt"))
dftrain_labels <- read.table(unz(z,"y_train.txt"))
features <- read.table(unz(z,"features.txt"))
subject_test <- read.table(unz(z,"subject_test.txt"))
subject_train <- read.table(unz(z,"subject_train.txt"))

unlink(z)


## merge training and test set to create new data set

merged_data <- rbind(dftrain_set, dftest_set)

## rename columns using features

colnames(merged_data) <- features$V2

## rbind train and test labels

merged_labels <- rbind(dftrain_labels, dftest_labels)

## cbind labels to merged data set

complete_data <- cbind(merged_labels, merged_data)

## rbind train and test subject

merged_subjects <- rbind(subject_train, subject_test)

## cbind  subjects to combined dataset

complete_data <- cbind(merged_subjects, complete_data)

## rename first columns with "Activity Name"

colnames(complete_data)[1] <- "Subject"
colnames(complete_data)[2] <- "Activity"

## determine columns that calculate mean and sd
## see README for explanation behind search term

index_meanstd <- grep("mean\\(|std\\(", names(complete_data))

## subset data for mean and std variables only

data_wanted <- complete_data[ ,c(1:2, index_meanstd)]

## introduce descriptive activity names

data_wanted$`Activity` <- factor(data_wanted$`Activity`, levels = activity_labels[,1], labels = activity_labels[, 2])

## clarify variable names

names(data_wanted) <- gsub("-mean()", "Mean", names(data_wanted))
names(data_wanted) <- gsub("-std()", "STD", names(data_wanted))
names(data_wanted) <- gsub("-X", "X-axis", names(data_wanted))
names(data_wanted) <- gsub("-Y", "Y-axis", names(data_wanted))
names(data_wanted) <- gsub("-Z", "Z-axis", names(data_wanted))

## created new dataframe

melted_data <- melt(data_wanted, id = c("Subject", "Activity"))
unmelted_mean <- dcast(melted_data, Subject + Activity ~ variable, mean)

## write tidy data table

write.table(unmelted_mean, "tidy.txt", row.names = FALSE, quote = FALSE)

