#### 1. Merges the training and the test sets to create one data set.
# Data:
train.Data <- read.table("./train/X_train.txt")
test.Data <- read.table("./test/X_test.txt")
full.Data <- rbind(train.Data, test.Data)
# Labels
train.Labels <- read.table("./train/y_train.txt")
test.Labels <- read.table("./test/y_test.txt")
full.Labels <- rbind(train.Labels, test.Labels)
# Subject
train.Subject <- read.table("./train/subject_train.txt")
test.Subject <- read.table("./test/subject_test.txt")
full.Subject <- rbind(train.Subject, test.Subject)

 
#### 2. Extracts only the measurements on the mean and standard deviation for 
####    each measurement
features <- read.table("./features.txt")
setnames(features, names(features), c("featureNum", "featureName"))
indices_matching <- grep("-mean\\(\\)|-std\\(\\)", tolower(features[, 2]), value=FALSE)
full.Data <- full.Data[, indices_matching]
names(full.Data) <- tolower(features[indices_matching, 2])

#### 3. Uses descriptive activity names to name the activities in the data set.
 

#### 4. Appropriately labels the data set with descriptive activity names.
 

#### 5. Creates a second, independent tidy data set with the average of each 
####    variable for each activity and each subject.
 

