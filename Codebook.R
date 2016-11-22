---
title: "Code Book"
author: "Jonathan Friedman"
date: "November 22, 2016"
output: html_document
---

## Codebook
  
The tidy.txt table produced containes 68 variables.
The first variable, Subject, refers to the subject that participated in the study.
The second variable, Activity, refers to one of six activities (walking, walking upstairs, walking downstairs, sitting, standing, laying).

The next 40 variables are interpreted as follows:
  *Each variable name begins with a t, referring to the time domain signals
  *Following t, time is deconstructed by Body/Gravity, referring to the Body and Graviational motion components of the sensor acceleration signal (e.g. tBody, tGravity)
  *The third element refers to the sensor signal: Acc refers to accelerometer (e.g. tBodyAcc) and Gyro refers to Gryoscope (e.g. tBodyGyro)
  *The body linear acceleration and angular velocity were recorded to obtain Jerk signals (e.g. tbodyAccJerk) and the Magnitude of three-dimensional signals (e.g. tbodyAccMag)
  *The next element refers to the calculation, eiher Mean or STD, for standard deviation
  *The final element is the axis along which the movement was made (X-axis, Y-axis, Z-axis)

The final 26 variables were calculated using a Fast Fourier Transform. The variables begin with f, to denote frequency.

Below is a list of the variable names.
    
source(run_analysis.R)  
print(names(data_wanted))

