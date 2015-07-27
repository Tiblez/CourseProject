==================================================================
Tidy data obtained from the Human Activity Recognition Using Smartphones Dataset
Version 1.0
==================================================================
Tiblez Ogbagabriel
==================================================================

This file explains the process used in preparing a tidy data, from the Human Activity Recognition Using Smartphones Dataset (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones), that can be used for later analysis.

The experiments have been carried out with a group of 30 volunteers. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist.
The features for the experiment were estimates on the mean and standard deviation of measurements, 3-axial linear acceleration and 3-axial angular velocity, captured at a constant rate of 50Hz using an accelerometer and gyroscope embedded in a Samsung Galaxy S II smart phone.

==================================================================

For each record it is provided:
=========================================

- Subject

- Activity

- Domain

- Signal

- Estimated_variable

- Axis

- Normalized_Value




Detailed description of the list of variables provided for each record is available in ‘CodeBook.md’


==================================================================

The dataset includes the following files:
=========================================

- 'README.md’

- ‘run.analysis.R’: the code for obtaining the tidy_data (‘my_tidy_data.txt’)


- ’my_tidy_data.txt’: tidy data set with the average of each variable for each activity and each subject


- ‘run.analysis.R’: script for performing the analysis to obtaining the tidy_data (‘my_tidy_data.txt’)


- ‘CodeBook.md’: Shows information about the variables used on the feature vector


==================================================================

Note
========

Description for every action taken in obtaining the tide data is provided in the run.analysis.R’.

==================================================================

Here is the site where the data was obtained (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).

==================================================================