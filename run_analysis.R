X_test <- read.table("./UCI HAR Dataset/test/X_test.txt")
X_train <- read.table("./UCI HAR Dataset/train/X_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
subject_train <- read.table("./UCI HAR Dataset/train/subject_train.txt")
subject_test <- read.table("./UCI HAR Dataset/test/subject_test.txt")
y_test <- read.table("./UCI HAR Dataset/test/y_test.txt")
y_train <- read.table("./UCI HAR Dataset/train/y_train.txt")

features <- read.table("./UCI HAR Dataset/features.txt")

## extract the features with names including "mean()" or "std()"
features <- as.character(features[[2]])
mean_std_features <- grep("mean\\(\\)|std\\(\\)", features)

X_test <- X_test[,mean_std_features]
X_train <- X_train[,mean_std_features]

## Attach the subject and activity code ("y" value) as new columns
test_set <- cbind(subject_test,y_test,X_test)
train_set <- cbind(subject_train,y_train,X_train)

# Merge the training and testing sets
data <- rbind(test_set, train_set)

# Remove "()" from feature names
featureNames <- gsub("()", "", features[mean_std_features], fixed = TRUE)

## Add the labels (descriptive column names)
colnames(data) <- c("Subject", "ACT_CODE", featureNames)

## Replace the activity codes column with descriptive activity names column
act_names <- read.table("./UCI HAR Dataset/activity_labels.txt")
colnames(act_names) <- c("ACT_CODE", "Activity")
data <- merge(act_names, data)
data$ACT_CODE <- NULL

# Create the tidy data set with the averages
tidy <- aggregate(data[,featureNames], data[,c("Activity", "Subject")], FUN=mean)

write.table(tidy, "tidy.txt", row.name = FALSE)
