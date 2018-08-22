Summary
-------

This is codebook for the Project 4 included in Getting and Cleaning data
course on Coursera.

See README.rmd file for files included with this repository

Study Design
------------

One of the most exciting areas in all of data science right now is
wearable computing. Companies like Fitbit, Nike, and Jawbone Up are
racing to develop the most advanced algorithms to attract new users. The
data linked to from the course website represent data collected from the
accelerometers from the Samsung Galaxy S smartphone.

The experiments have been carried out with a group of 30 volunteers
within an age bracket of 19-48 years. Each person performed six
activities (WALKING, WALKING\_UPSTAIRS, WALKING\_DOWNSTAIRS, SITTING,
STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the
waist. Using its embedded accelerometer and gyroscope, we captured
3-axial linear acceleration and 3-axial angular velocity at a constant
rate of 50Hz. The experiments have been video-recorded to label the data
manually. The obtained dataset has been randomly partitioned into two
sets, where 70% of the volunteers was selected for generating the
training data and 30% the test data.

The sensor signals (accelerometer and gyroscope) were pre-processed by
applying noise filters and then sampled in fixed-width sliding windows
of 2.56 sec and 50% overlap (128 readings/window). The sensor
acceleration signal, which has gravitational and body motion components,
was separated using a Butterworth low-pass filter into body acceleration
and gravity. The gravitational force is assumed to have only low
frequency components, therefore a filter with 0.3 Hz cutoff frequency
was used. From each window, a vector of features was obtained by
calculating variables from the time and frequency domain.

Raw Data
--------

Raw Data consisted of following files:

-   'README.txt'

-   'features\_info.txt': Shows information about the variables used on
    the feature vector.

-   'features.txt': List of all features.

-   'activity\_labels.txt': Links the class labels with their activity
    name.

-   'train/X\_train.txt': Training set.

-   'train/y\_train.txt': Training labels.

-   'test/X\_test.txt': Test set.

-   'test/y\_test.txt': Test labels.

The following files are available for the train and test data. Their
descriptions are equivalent.

-   'train/subject\_train.txt': Each row identifies the subject who
    performed the activity for each window sample. Its range is from 1
    to 30.

-   'train/Inertial Signals/total\_acc\_x\_train.txt': The acceleration
    signal from the smartphone accelerometer X axis in standard gravity
    units 'g'. Every row shows a 128 element vector. The same
    description applies for the 'total\_acc\_x\_train.txt' and
    'total\_acc\_z\_train.txt' files for the Y and Z axis.

-   'train/Inertial Signals/body\_acc\_x\_train.txt': The body
    acceleration signal obtained by subtracting the gravity from the
    total acceleration.

-   'train/Inertial Signals/body\_gyro\_x\_train.txt': The angular
    velocity vector measured by the gyroscope for each window sample.
    The units are radians/second.

Tidy Data
---------

tidyData.txt contains the tidy data output It contains:

-   activityName
-   subjectId
-   averages of measurements taken for them

subjectId ranges from 1 to 30

activityName has six activities:

-   WALKING
-   WALKING\_UPSTAIRS
-   WALKING\_DOWNSTAIRS
-   SITTING
-   STANDING
-   LAYING

Average of following Measurements taken for each subjectId and
activityName:

-   timeDomainBodyAccelerometerMeanX
-   timeDomainBodyAccelerometerMeanY
-   timeDomainBodyAccelerometerMeanZ
-   timeDomainBodyAccelerometerStandardDeviationX
-   timeDomainBodyAccelerometerStandardDeviationY
-   timeDomainBodyAccelerometerStandardDeviationZ
-   timeDomainGravityAccelerometerMeanX
-   timeDomainGravityAccelerometerMeanY
-   timeDomainGravityAccelerometerMeanZ
-   timeDomainGravityAccelerometerStandardDeviationX
-   timeDomainGravityAccelerometerStandardDeviationY
-   timeDomainGravityAccelerometerStandardDeviationZ
-   timeDomainBodyAccelerometerJerkMeanX
-   timeDomainBodyAccelerometerJerkMeanY
-   timeDomainBodyAccelerometerJerkMeanZ
-   timeDomainBodyAccelerometerJerkStandardDeviationX
-   timeDomainBodyAccelerometerJerkStandardDeviationY
-   timeDomainBodyAccelerometerJerkStandardDeviationZ
-   timeDomainBodyGyroscopeMeanX
-   timeDomainBodyGyroscopeMeanY
-   timeDomainBodyGyroscopeMeanZ
-   timeDomainBodyGyroscopeStandardDeviationX
-   timeDomainBodyGyroscopeStandardDeviationY
-   timeDomainBodyGyroscopeStandardDeviationZ
-   timeDomainBodyGyroscopeJerkMeanX
-   timeDomainBodyGyroscopeJerkMeanY
-   timeDomainBodyGyroscopeJerkMeanZ
-   timeDomainBodyGyroscopeJerkStandardDeviationX
-   timeDomainBodyGyroscopeJerkStandardDeviationY
-   timeDomainBodyGyroscopeJerkStandardDeviationZ
-   timeDomainBodyAccelerometerMagnitudeMean
-   timeDomainBodyAccelerometerMagnitudeStandardDeviation
-   timeDomainGravityAccelerometerMagnitudeMean
-   timeDomainGravityAccelerometerMagnitudeStandardDeviation
-   timeDomainBodyAccelerometerJerkMagnitudeMean
-   timeDomainBodyAccelerometerJerkMagnitudeStandardDeviation
-   timeDomainBodyGyroscopeMagnitudeMean
-   timeDomainBodyGyroscopeMagnitudeStandardDeviation
-   timeDomainBodyGyroscopeJerkMagnitudeMean
-   timeDomainBodyGyroscopeJerkMagnitudeStandardDeviation
-   frequencyDomainBodyAccelerometerMeanX
-   frequencyDomainBodyAccelerometerMeanY
-   frequencyDomainBodyAccelerometerMeanZ
-   frequencyDomainBodyAccelerometerStandardDeviationX
-   frequencyDomainBodyAccelerometerStandardDeviationY
-   frequencyDomainBodyAccelerometerStandardDeviationZ
-   frequencyDomainBodyAccelerometerMeanFrequencyX
-   frequencyDomainBodyAccelerometerMeanFrequencyY
-   frequencyDomainBodyAccelerometerMeanFrequencyZ
-   frequencyDomainBodyAccelerometerJerkMeanX
-   frequencyDomainBodyAccelerometerJerkMeanY
-   frequencyDomainBodyAccelerometerJerkMeanZ
-   frequencyDomainBodyAccelerometerJerkStandardDeviationX
-   frequencyDomainBodyAccelerometerJerkStandardDeviationY
-   frequencyDomainBodyAccelerometerJerkStandardDeviationZ
-   frequencyDomainBodyAccelerometerJerkMeanFrequencyX
-   frequencyDomainBodyAccelerometerJerkMeanFrequencyY
-   frequencyDomainBodyAccelerometerJerkMeanFrequencyZ
-   frequencyDomainBodyGyroscopeMeanX
-   frequencyDomainBodyGyroscopeMeanY
-   frequencyDomainBodyGyroscopeMeanZ
-   frequencyDomainBodyGyroscopeStandardDeviationX
-   frequencyDomainBodyGyroscopeStandardDeviationY
-   frequencyDomainBodyGyroscopeStandardDeviationZ
-   frequencyDomainBodyGyroscopeMeanFrequencyX
-   frequencyDomainBodyGyroscopeMeanFrequencyY
-   frequencyDomainBodyGyroscopeMeanFrequencyZ
-   frequencyDomainBodyAccelerometerMagnitudeMean
-   frequencyDomainBodyAccelerometerMagnitudeStandardDeviation
-   frequencyDomainBodyAccelerometerMagnitudeMeanFrequency
-   frequencyDomainBodyAccelerometerJerkMagnitudeMean
-   frequencyDomainBodyAccelerometerJerkMagnitudeStandardDeviation
-   frequencyDomainBodyAccelerometerJerkMagnitudeMeanFrequency
-   frequencyDomainBodyGyroscopeMagnitudeMean
-   frequencyDomainBodyGyroscopeMagnitudeStandardDeviation
-   frequencyDomainBodyGyroscopeMagnitudeMeanFrequency
-   frequencyDomainBodyGyroscopeJerkMagnitudeMean
-   frequencyDomainBodyGyroscopeJerkMagnitudeStandardDeviation
-   frequencyDomainBodyGyroscopeJerkMagnitudeMeanFrequency

Transformations applied to raw data
-----------------------------------

-   Merge the training and the test sets to create one data set.
-   Extract only the measurements on the mean and standard deviation for
    each measurement.
-   Use descriptive activity names to name the activities in the data
    set
-   Appropriately labels the data set with descriptive variable names.
-   From the data set in step 4, creates a second, independent tidy data
    set with the average of each variable for each activity and each
    subject.
