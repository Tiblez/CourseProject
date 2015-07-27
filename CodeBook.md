
This code book describes the variables, the data, and the work performed to clean up the data from the Human Activity Recognition Using Smartphones experiment.


==================================================================

The features selected for this tidy_data come from the features in the Human Activity Recognition Using Smartphones experiment ((http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones). The experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The features for the experiment were estimates on the mean and standard deviation of measurements, 3-axial linear acceleration and 3-axial angular velocity, captured at a constant rate of 50Hz using an accelerometer and gyroscope embedded in a Samsung Galaxy S II smart phone.

==================================================================

List of vectors obtained from the raw dataset:

“Subject” - an identifier of the subject who carried out the experiment (1:30 for the 30 volunteers)
“Activity” - the activity label (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING)
“Domain” feature vector with time and frequency domain variables
“Signal” - accelerometer signal (body or gravity acceleration) or gyroscope signal (angular velocity)
“Estimated_variable” - subset of variables that were estimated from these signals (measurements on the mean or standard deviation)
“Axis” - X, Y or Z of the three-dimensional signals
“Normalized_Value” - normalized value of the measurements bounded within [-1,1]


==================================================================

Measurements on the mean and standard deviation for each measurement are extracted (“Estimated_variable”).


The set of variables that were included in the “Estimated_variable” are:

mean(): Mean value

std(): Standard deviation
meanFreq(): Weighted average of the frequency components to obtain a mean frequency


Vectors obtained by averaging the signals in a signal window sample, which are used on the angle() variable are not included in the “Estimated_variable”. The vectors not included in the “Estimated_variable” are listed below:



gravityMean

tBodyAccMean

tBodyAccJerkMean

tBodyGyroMean

tBodyGyroJerkMean

==================================================================