# CodeBook - groupData
## Feature description
The features selected for this database come from the accelerometer and gyroscope 3-axial raw signals tAcc-XYZ and tGyro-XYZ. These time domain signals (prefix 'Time' to denote time) were captured at a constant rate of 50 Hz. Then they were filtered using a median filter and a 3rd order low pass Butterworth filter with a corner frequency of 20 Hz to remove noise. Similarly, the acceleration signal was then separated into body and gravity acceleration signals (Time_Body_Accelerometer_XYZ and Time_Gravity_Accelerometer_XYZ) using another low pass Butterworth filter with a corner frequency of 0.3 Hz. 

Subsequently, the body linear acceleration and angular velocity were derived in time to obtain Jerk signals (Time_Body_Accelerometer_Jerk_XYZ and Time_Body_Gyroscope_Jerk_XYZ). Also the magnitude of these three-dimensional signals were calculated using the Euclidean norm (Time_Body_Accelerometer_Magnitute, Time_Gravity_Accelerometer_Magnitute, Time_Body_Accelerometer_Jerk_Magnitute, Time_Body_Gyroscope_Magnitude, Time_Body_Gyroscope_Jerk_Magnitude). 

Finally a Fast Fourier Transform (FFT) was applied to some of these signals producing Frequency_Body_Accelerometer_XYZ, Frequency_Body_Accelerometer_Jerk_XYZ, Frequency_Body_Gyroscope_XYZ, Frequency_Body_Accelerometer_Jerk_Magnitude, Frequency_Body_Gyroscope_Magnitude, Frequency_Body_Gyroscope_Jerk_Magnitude. (Note the 'Frequency' to indicate frequency domain signals). 

These signals were used to estimate variables of the feature vector for each pattern:  
'-XYZ' is used to denote 3-axial signals in the X, Y and Z directions.

## Variable descriptions
**"subject"**
Integer from 1 to 30, the volunteer ID who perfromed the activity for each window sample<br>

**"activity"**
Factor of 6 levels, labeled with activity names: "WALking", "WALKING_UPSTAIRS", "WALKING_DOWNSTAIRS", "SITTING", "STANDING", "LAYING"<br>

**"Time_Body_Accelerometer_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of time domain signals of body linear acceleration on X/Y/Z axis<br>

**"Time_Gravity_Accelerometer_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of time domain signals of gravity acceleration on X/Y/Z axis<br>

**"Time_Body_Accelerometer_Jerk_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of time domain signals of body linear acceleration Jerk signals on X/Y/Z axis<br>

**"Time_Body_Gyroscope_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of time domain signals of body angular acceleration on X/Y/Z axis<br>

**"Time_Body_Gyroscope_Jerk_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of time domain signals of body angular acceleration Jerk signals on X/Y/Z axis<br>

**"Time_Body_Accelerometer_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the time domain signals of body linear acceleration calculated using the Euclidean norm<br>

**"Time_Gravity_Accelerometer_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the time domain signals of gravity acceleration calculated using the Euclidean norm <br>

**"Time_Body_Accelerometer_Jerk_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the time domain signals of body linear acceleration Jerk signals calculated using the Euclidean norm<br>

**"Time_Body_Gyroscope_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the time domain signals of body angular acceleration calculated using the Euclidean norm<br>

**"Time_Body_Gyroscope_Jerk_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the time domain signals of body angular acceleration Jerk signals calculated using the Euclidean norm<br>

**"Frequency_Body_Accelerometer_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of frequency domain signals of body linear acceleration on X/Y/Z axis<br>

**"Frequency_Body_Accelerometer_Jerk_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of frequency domain signals of body linear acceleration Jerk signals on X/Y/Z axis<br>

**"Frequency_Body_Gyroscope_mean/std_X/Y/Z"**
Numeric data within [-1,1], average mean value / standard deviation of frequency domain signals of body angular acceleration on X/Y/Z axis<br>

**"Frequency_Body_Accelerometer_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the frequency domain signals of body linear acceleration calculated using the Euclidean norm<br>

**"Frequency_Body_Accelerometer_Jerk_Magnitude_mean/std"** 
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the frequency domain signals of body linear acceleration Jerk signals calculated using the Euclidean norm<br>

**"Frequency_Body_Gyroscope_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the frequency domain signals of body angular acceleration calculated using the Euclidean norm<br>

**"Frequency_Body_Gyroscope_Jerk_Magnitude_mean/std"**
Numeric data within [-1,1], average mean value / standard deviation of magnitude of the frequency domain signals of body angular acceleration Jerk signals calculated using the Euclidean norm<br>
