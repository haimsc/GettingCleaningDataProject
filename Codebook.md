## Code book for the tidy data set

This code book describes the tidy data set created for the Coursera Getting and Cleaning Data course project.

### Original Data Set
The original data for the project was taken from: 

https://d396qusza40orc.cloudfront.net/getdata%2Fprojectfiles%2FUCI%20HAR%20Dataset.zip 

The data was collected from the accelerometers from the Samsung Galaxy S smartphone. A full description is available at the site where the data was obtained:

http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones.

The following is a description of the variables in the original data set:

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (tBodyAcc-XYZ and tGravityAcc-XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (tBodyAccJerk-XYZ and tBodyGyroJerk-XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (tBodyAccMag, tGravityAccMag, tBodyAccJerkMag, tBodyGyroMag, tBodyGyroJerkMag).

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing fBodyAcc-XYZ, fBodyAccJerk-XYZ, fBodyGyro-XYZ, fBodyAccJerkMag, fBodyGyroMag, fBodyGyroJerkMag. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

tBodyAcc-XYZ<br/>
tGravityAcc-XYZ<br/>
tBodyAccJerk-XYZ<br/>
tBodyGyro-XYZ<br/>
tBodyGyroJerk-XYZ<br/>
tBodyAccMag<br/>
tGravityAccMag<br/>
tBodyAccJerkMag<br/>
tBodyGyroMag<br/>
tBodyGyroJerkMag<br/>
fBodyAcc-XYZ<br/>
fBodyAccJerk-XYZ<br/>
fBodyGyro-XYZ<br/>
fBodyAccMag<br/>
fBodyAccJerkMag<br/>
fBodyGyroMag<br/>
fBodyGyroJerkMag<br/>

The set of variables that were estimated from these signals included:

mean(): Mean value<br/>
std(): Standard deviation<br/>

Additional estimates were calculated, such as max(), min(), etc, but these are not included in the tidy data set.

### Data Processing

The tidy data set described in this code book was generated from the original data set. The steps that were applied are the following:

1. The test and training data set were merged into one data set
2. In the original data set, the data on the subject and the activity of each observation was located in separate files. In the tidy data set, the subject and activity data was merged by adding new Subject and Activity columns.
3. Extracted only measurements on the mean and standard deviation for each measurement
4. The tidy data set contains the averages of the extracted variables for each activity and each subject.

The final tidy data set has 180 obseravations achieved by taking the avaerage for each of the mean() and std() features for each combination of subject and activity (30 subjects * 6 activities).

### The variables in the tidy data set

- **Activity**: The activity names. One of: "WALKING", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"
- **tBodyAcc-mean-X**: Average of the mean body linear acceleration in the X direction (Unit: G)
- **tBodyAcc-mean-Y**: Average of the mean body linear acceleration in the Y direction (Unit: G)
- **tBodyAcc-mean-Z**: Average of the mean body linear acceleration in the Y direction (Unit: G)
- **tBodyAcc-std-X**: Average of the standard deviation of the body linear acceleration in the X direction (Unit: G)
- **tBodyAcc-std-Y**: Average of the standard deviation of the body linear acceleration in the Y direction (Unit: G)
- **tBodyAcc-std-Z**: Average of the standard deviation of the body linear acceleration in the Z direction (Unit: G)
- **tGravityAcc-mean-X**: Average of the mean gravity acceleration in the X direction (Unit: G)
- **tGravityAcc-mean-Y**: Average of the mean gravity acceleration in the X direction (Unit: G)
- **tGravityAcc-mean-Z**: Average of the mean gravity acceleration in the X direction (Unit: G)
- **tGravityAcc-std-X**: Average of the standard deviation of the gravity acceleration in the X direction (Unit: G)
- **tGravityAcc-std-Y**: Average of the standard deviation of the gravity acceleration in the X direction (Unit: G)
- **tGravityAcc-std-Z**: Average of the standard deviation of the gravity acceleration in the X direction (Unit: G)
- **tBodyAccJerk-mean-X**: Average of the mean body jerk in the X direction (Unit: G/s)
- **tBodyAccJerk-mean-Y**: Average of the mean body jerk in the Y direction (Unit: G/s)
- **tBodyAccJerk-mean-Z**: Average of the mean body jerk in the Z direction (Unit: G/s)
- **tBodyAccJerk-std-X**: Average of the standard deviation of the body jerk in the X direction (Unit: G/s)
- **tBodyAccJerk-std-Y**: Average of the standard deviation of the body jerk in the X direction (Unit: G/s)
- **tBodyAccJerk-std-Z**: Average of the standard deviation of the body jerk in the X direction (Unit: G/s)
- **tBodyGyro-mean-X**: Average of the mean angualr velocity around the X axis (Unit: deg/s)
- **tBodyGyro-mean-Y**: Average of the mean angualr velocity around the X axis (Unit: deg/s)
- **tBodyGyro-mean-Z**: Average of the mean angualr velocity around the X axis (Unit: deg/s)
- **tBodyGyro-std-X**: Average of the standard deviation of the angualr velocity around the X axis (Unit: deg/s)
- **tBodyGyro-std-Y**: Average of the standard deviation of the angualr velocity around the Y axis (Unit: deg/s)
- **tBodyGyro-std-Z**: Average of the standard deviation of the angualr velocity around the Z axis (Unit: deg/s)
- **tBodyGyroJerk-mean-X**: Average of the mean jerk of the angular velocity around the X axis (Unit: deg/s^2)
- **tBodyGyroJerk-mean-Y**: Average of the mean jerk of the angular velocity around the X axis (Unit: deg/s^2)
- **tBodyGyroJerk-mean-Z**: Average of the mean jerk of the angular velocity around the X axis (Unit: deg/s^2)
- **tBodyGyroJerk-std-X**: Average of the standard deviation of the jerk of the angular velocity around the X axis (Unit: deg/s^2)
- **tBodyGyroJerk-std-Y**: Average of the standard deviation of the jerk of the angular velocity around the Y axis (Unit: deg/s^2)
- **tBodyGyroJerk-std-Z**: Average of the standard deviation of the jerk of the angular velocity around the Z axis (Unit: deg/s^2)
- **tBodyAccMag-mean**: Average of the mean magnitude of the three-dimensional body linear acceleration (Unit: G)
- **tBodyAccMag-std**: Average of the standard deviation of the magnitude of the three-dimensional body linear acceleration (Unit: G)
- **tGravityAccMag-mean**: Average of the mean magnitude of the three-dimensional gravity acceleration (Unit: G)
- **tGravityAccMag-std**: Average of the standard deviation of the magnitude of the three-dimensional gravity acceleration (Unit: G)
- **tBodyAccJerkMag-mean**: Average of the mean magnitude of the three-dimensional body linear jerk  (Unit: G/s)
- **tBodyAccJerkMag-std**: Average of the standard deviation of the magnitude of the three-dimensional body linear jerk (Unit: G/s)
- **tBodyGyroMag-mean**: Average of the mean magnitude of the three-dimensional angular velocity (Unit: deg/s)
- **tBodyGyroMag-std**: Average of the standard deviation of the magnitude of the three-dimensional angular velocity (Unit: deg/s)
- **tBodyGyroJerkMag-mean**: Average of the mean magnitude of the three-dimensional jerk of the angular velocity (Unit: deg/s^2)
- **tBodyGyroJerkMag-std**: Average of the standard deviation magnitude of the three-dimensional jerk of the angular velocity (Unit: deg/s)
- **fBodyAcc-mean-X**: Average of the mean frequency of body linear acceleration in the X direction (Unit: Hz)
- **fBodyAcc-mean-Y**: Average of the mean frequency of body linear acceleration in the Y direction (Unit: Hz)
- **fBodyAcc-mean-Z**: Average of the mean frequency of body linear acceleration in the Z direction (Unit: Hz)
- **fBodyAcc-std-X**: Average of the standard deviation of the frequency of body linear acceleration in the X direction (Unit: Hz)
- **fBodyAcc-std-Y**: Average of the standard deviation of the frequency of body linear acceleration in the Y direction (Unit: Hz)
- **fBodyAcc-std-Z**: Average of the standard deviation of the frequency of body linear acceleration in the Z direction (Unit: Hz)
- **fBodyAccJerk-mean-X**: Average of the mean frequency of body linear acceleration jerk in the X direction (Unit: Hz)
- **fBodyAccJerk-mean-Y**: Average of the mean frequency of body linear acceleration jerk in the Y direction (Unit: Hz)
- **fBodyAccJerk-mean-Z**: Average of the mean frequency of body linear acceleration jerk in the Z direction (Unit: Hz)
- **fBodyAccJerk-std-X**: Average of the standard deviation of the frequency of body linear acceleration jerk in the X direction (Unit: Hz)
- **fBodyAccJerk-std-Y**: Average of the standard deviation of the frequency of body linear acceleration jerk in the Y direction (Unit: Hz)
- **fBodyAccJerk-std-Z**: Average of the standard deviation of the frequency of body linear acceleration jerk in the Z direction (Unit: Hz)
- **fBodyGyro-mean-X**: Average of the mean frequency of angualr velocity in the X direction (Unit: Hz)
- **fBodyGyro-mean-Y**: Average of the mean frequency of angualr velocity in the Y direction (Unit: Hz)
- **fBodyGyro-mean-Z**: Average of the mean frequency of angualr velocity in the Z direction (Unit: Hz)
- **fBodyGyro-std-X**: Average of the standard deviation of the frequency of angualr velocity in the X direction (Unit: Hz)
- **fBodyGyro-std-Y**: Average of the standard deviation of the frequency of angualr velocity in the Y direction (Unit: Hz)
- **fBodyGyro-std-Z**: Average of the standard deviation of the frequency of angualr velocity in the Z direction (Unit: Hz)
- **fBodyAccMag-mean**: Average of the mean frequency of the magnitude of body linear acceleration (Unit: Hz)
- **fBodyAccMag-std**: Average of the standard deviation of the frequency of the magnitude of body linear acceleration (Unit: Hz)
- **fBodyBodyAccJerkMag-mean**: Average of the mean frequency of the magnitude of body linear acceleration jerk (Unit: Hz)
- **fBodyBodyAccJerkMag-std**: Average of the standard deviation of the frequency of the magnitude of body linear acceleration jerk (Unit: Hz)
- **fBodyGyroMag-mean**: Average of the mean frequency of the magnitude of the angualr velocity (Unit: Hz)
- **fBodyGyroMag-std: Average of the standard deviation of frequency of the magnitude of the angualr velocity (Unit: Hz)
- **fBodyGyroJerkMag-mean**: Average of the mean frequency of the magnitude of the angualr velocity jerk(Unit: Hz)
- **fBodyGyroJerkMag-std**: Average of the standard deviation of frequency of the magnitude of the angualr velocity jerk(Unit: Hz)