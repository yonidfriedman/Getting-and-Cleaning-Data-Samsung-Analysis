---
title: "README"
author: "Jonathan Friedman"
date: "November 22, 2016"
output: html_document
---

# Analyzing Samsung movement data
    
Below is the explanation of the data set from the UCI database (http://archive.ics.uci.edu/ml/datasets/Human+Activity+Recognition+Using+Smartphones).
The requested citation is: Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. A Public Domain Dataset for Human Activity Recognition Using Smartphones. 21th European Symposium on Artificial Neural Networks, Computational Intelligence and Machine Learning, ESANN 2013. Bruges, Belgium 24-26 April 2013.

    
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years. Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist. Using its embedded accelerometer and gyroscope, we captured 3-axial linear acceleration and 3-axial angular velocity at a constant rate of 50Hz. The experiments have been video-recorded to label the data manually. The obtained dataset has been randomly partitioned into two sets, where 70% of the volunteers was selected for generating the training data and 30% the test data. 

The sensor signals (accelerometer and gyroscope) were pre-processed by applying noise filters and then sampled in fixed-width sliding windows of 2.56 sec and 50% overlap (128 readings/window). The sensor acceleration signal, which has gravitational and body motion components, was separated using a Butterworth low-pass filter into body acceleration and gravity. The gravitational force is assumed to have only low frequency components, therefore a filter with 0.3 Hz cutoff frequency was used. From each window, a vector of features was obtained by calculating variables from the time and frequency domain."

 Three files are included:

 * R Script
 * Tidy Data Set
 * Explanatory Codebook

## R Script

 The R Script, run_analysis.R, extracts and manipulates the Samsung data to create a tidy data table that includes the average mean and standard deviation for all activities for each subject. 

## Tidy Data Set

 The R script concludes by writing a tidy data table. 
 To generate the table, run: 

 read.table("tidy.txt")

 What makes the data set tidy is that each observation contains the average values of each of six activities for each subject.

 ## Explanatory Codebook

 The Codebook explains the processes carried out by the run_analysis.R script and gives a brief definition of all variables.
 
