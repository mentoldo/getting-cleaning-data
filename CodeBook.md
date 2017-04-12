# Features Selection

The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 't' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals using another low pass Butterworth filter with a corner frequency of 0.3 Hz.

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals. Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm.

Finally a Fast Fourier Transform (FFT) was applied to some of these signals. (Note the 'f' to indicate frequency domain signals).

These signals were used to estimate variables of the feature vector for each pattern:
'xyz' is used to denote 3-axial signals in the X, Y and Z directions.

The set of variables that were estimated from these signals are:

* **mean**: Mean value
* **std**: Standard Deviation

# CodeBook
Variable             | Description
------               |----     
subject               |Identifier of the subject who carried out the experiment. Integer number from 1 to 30
activity              |Activities wearing the smartphones. Factor with 6 levels: walking, walking_upstairs, walking_downstairs, sitting, standing, laying
tbodyaccmeanx        | Mean of x-axis time domain signal of body linear acceleration
tbodyaccmeany        | Mean of y-axis time domain signal of body linear acceleration
tbodyaccmeanz        | Mean of z-axis time domain signal of body linear acceleration
tbodyaccstdx         | Standard Deviation of x-axis time domain signal body linear acceleration
tbodyaccstdy         | Standard Deviation of y-axis time domain signal body linear acceleration
tbodyaccstdz         | Standard Deviation of z-axis time domain signal body linear acceleration
tgravityaccmeanx     |Mean of x-axis time domain signal of gravity linear acceleration
tgravityaccmeany      |Mean of y-axis time domain signal of gravity linear acceleration
tgravityaccmeanz      |Mean of z-axis time domain signal of gravity linear acceleration
tgravityaccstdx       |Standard Deviation of x-axis time domain signal of gravity linear acceleration
tgravityaccstdy       |Standard Deviation of y-axis time domain signal of gravity linear acceleration
tgravityaccstdz       |Standard Deviation of z-axis time domain signal of gravity linear acceleration
tbodyaccjerkmeanx     |Mean of x-axis Jerk signal of body linear acceleration
tbodyaccjerkmeany     |Mean of y-axis Jerk signal of body linear acceleration
tbodyaccjerkmeanz     |Mean of z-axis Jerk signal of body linear acceleration
tbodyaccjerkstdx      |Standard Deviation of x-axis Jerk signal of body linear acceleration
tbodyaccjerkstdy      |Standard Deviation of y-axis Jerk signal of body linear acceleration
tbodyaccjerkstdz      |Standard Deviation of z-axis Jerk signal of body linear acceleration
tbodygyromeanx        |Mean of x-axis time domain signal of body angular velocity
tbodygyromeany        |Mean of y-axis time domain signal of body angular velocity
tbodygyromeanz        |Mean of z-axis time domain signal of body angular velocity
tbodygyrostdx         |Standard Deviation of x-axis time domain signal of body angular velocity
tbodygyrostdy         |Standard Deviation of y-axis time domain signal of body angular velocity
tbodygyrostdz         |Standard Deviation of z-axis time domain signal of body angular velocity      
tbodygyrojerkmeanx    |Mean of x-axis Jerk signal of body angular velocity
tbodygyrojerkmeany    |Mean of y-axis Jerk signal of body angular velocity
tbodygyrojerkmeanz    |Mean of z-axis Jerk signal of body angular velocity
tbodygyrojerkstdx     |Standard Deviation of x-axis Jerk signal of body angular velocity
tbodygyrojerkstdy     |Standard Deviation of y-axis Jerk signal of body angular velocity
tbodygyrojerkstdz     |Standard Deviation of z-axis Jerk signal of body angular velocity
tbodyaccmagmean       |Mean of three-dimensional signal of body linear acceleration calculated using the Euclidean norm
tbodyaccmagstd        |Standard Deviation of three-dimensional signal of body linear acceleration calculated using the Euclidean norm
tgravityaccmagmean    |Mean of three-dimensional signal of gravity linear acceleration calculated using the Euclidean norm
tgravityaccmagstd     |Standard Deviation of three-dimensional signal of gravity linear acceleration calculated using the Euclidean norm
tbodyaccjerkmagstd    |Mean of three-dimensional Jerk signal of body linear  acceleration calculated using the Euclidean norm
tbodyaccjerkmagmean   |Standard Deviation of three-dimensional Jerk signal of body linear  acceleration calculated using the Euclidean norm
tbodygyromagmean      |Mean of three-dimensional signal of body angular velocity calculated using the Euclidean norm
tbodygyromagstd       |Standard Deviation of three-dimensional signal of body angular velocity calculated using the Euclidean norm
tbodygyrojerkmagmean  |Mean of three-dimensional Jerk signal of body angular velocity calculated using the Euclidean norm
tbodygyrojerkmagstd   |Standard Deviation of three-dimensional Jerk signal of body angular velocity calculated using the Euclidean norm
fbodyaccmeanx         |FFT applied to tbodyaccmeanx
fbodyaccmeany         |FFT applied to tbodyaccmeany
fbodyaccmeanz         |FFT applied to tbodyaccmeanz
fbodyaccstdx          |FFT applied to tbodyaccstdx
fbodyaccstdy          |FFT applied to tbodyaccstdy
fbodyaccstdz          |FFT applied to tbodyaccstdz
fbodyaccjerkmeanx     |FFT applied to tbodyaccjerkmeanx
fbodyaccjerkmeany     |FFT applied to tbodyaccjerkmeany
fbodyaccjerkmeanz     |FFT applied to tbodyaccjerkmeanz
fbodyaccjerkstdx      |FFT applied to tbodyaccjerkstdx
fbodyaccjerkstdy      |FFT applied to tbodyaccjerkstdy
fbodyaccjerkstdz      |FFT applied to tbodyaccjerkstdz
fbodygyromeanx        |FFT applied to tbodygyromeanx
fbodygyromeany        |FFT applied to tbodygyromeany
fbodygyromeanz        |FFT applied to tbodygyromeany
fbodygyrostdx         |FFT applied to tbodygyrostdx
fbodygyrostdy         |FFT applied to tbodygyrostdy
fbodygyrostdz         |FFT applied to tbodygyrostdz
fbodyaccmagmean       |FFT applied to tbodyaccmagmean
fbodyaccmagstd        |FFT applied to tbodyaccmagstd
fbodyaccjerkmagmean   |FFT applied to tbodyaccjerkmagmean
fbodyaccjerkmagstd    |FFT applied to tbodyaccjerkmagstd
fbodygyromagmean      |FFT applied to tbodygyromagmean
fbodygyromagstd       |FFT applied to tbodygyromagstd
fbodygyrojerkmagmean  |FFT applied to tbodygyrojerkmagmean
fbodygyrojerkmagstd   |FFT applied to tbodygyrojerkmagstd
