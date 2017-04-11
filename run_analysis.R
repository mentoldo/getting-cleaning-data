## Read train data
train <- read.table("./data/train/X_train.txt")
subjecttrain <- read.table("./data/train/subject_train.txt")

## Read test data
test <- read.table("./data/test/X_test.txt")
subjecttest <- read.table("./data/test/subject_test.txt")

## Read features
features <- read.table("./data/features.txt", stringsAsFactors = FALSE)
features <- features$V2

## Read activities vectors
trainact <- read.table("./data/train/y_train.txt")
testact <- read.table("./data/test/y_test.txt")

## Concatenating activity and subject vectors from train and test
activity <- c(trainact$V1, testact$V1)
subject <- c(subjecttrain$V1, subjecttest$V1)

## Rename activity labels
activity_labels <- c("walking" = 1, "walkingupstairs" = 2, "walkingdownstairs" = 3, "sitting" = 4, "standing" = 5, "laying" = 6)
activity <- factor(activity, labels = names(activity_labels))

## Merge train and test
df <- rbind(train, test)

## Adding column names
names(df) <- features

## subsetting column names that contains "mean()" or "std()"
df <- df[,grepl("(mean\\(\\)|std\\(\\))",names(df))]

## Change variable names. Conver to lowercase and substract '-', '(' and ')'.
names(df) <- tolower(gsub("-|\\(|\\)", "", names(df)))
names(df) <- tolower(gsub("bodybody", "body", names(df)))

## Bind activity and subject column
df <- cbind(df, activity, subject)

## Average data set with the average of each variable for each activity and each subject
library(reshape2)
dfsumm <- melt(df, id = c("activity", "subject"))
tidysummary <- dcast(dfsumm, subject ~ activity, mean)

## Write tidy data
write.table(df, "tidydata.txt")
write.table(tidysummary, "tidysummary.txt")
