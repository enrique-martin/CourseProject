# Getting and Cleaning Data Course Project
Enrique Martin Lopez

### Based on the data set [1], from which the following descriptions and codebook are adapted.
[1] Davide Anguita, Alessandro Ghio, Luca Oneto, Xavier Parra and Jorge L. Reyes-Ortiz. Human Activity Recognition on Smartphones using a Multiclass Hardware-Friendly Support Vector Machine. International Workshop of Ambient Assisted Living (IWAAL 2012). Vitoria-Gasteiz, Spain. Dec 2012
This dataset is distributed AS-IS and no responsibility implied or explicit can be addressed to the authors or their institutions for its use or misuse. Any commercial use is prohibited.
Jorge L. Reyes-Ortiz, Alessandro Ghio, Luca Oneto, Davide Anguita. November 2012.


### Part of the description from the "README.txt" in [1] that is relevant to the presented work:
"The experiments have been carried out with a group of 30 volunteers within an age bracket of 19-48 years.
Each person performed six activities (WALKING, WALKING_UPSTAIRS, WALKING_DOWNSTAIRS, SITTING, STANDING, LAYING) wearing a smartphone (Samsung Galaxy S II) on the waist."

"From the original data set, the training and test sets were merged (using the script 'run_analysis.R') to create one data set 'tidy_dataset.txt'.
This data set specifies, for each activity, and each subject participating in the experiment, the average of the different features described in the codebook 'codebook.md'.


### The data set provided includes the following files:

* 'README.md'

* 'run_analysis.R': Script used to create the data set from the original data set [1]. For it to run and load the right files, it needs to be in the same directory as the data folder 'UCI HARD Dataset'.

* 'tidy_dataset.txt': The data set produced. Each row contains the name of an activity, the subject number, and the values of 66 features described in 'codebook.md'

* 'codebook.md': Shows information about the features included in the data set 'tidy_dataset.txt'


### Notes: 

Features are normalized and bounded within [-1,1].

For more information on the original dataset [1] contact: activityrecognition@smartlab.ws