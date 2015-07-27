library(dplyr)
library(tidyr)

# complete list of variables of each feature vector
features<- read.table("./features.txt", sep=" ", header=F)

# train datasets
triaxial_data_train<- read.table("./train/X_train.txt", sep="", header=F, col.names = features[,2]) #dim 7352  561
activity_labels_train <- read.table("./train/y_train.txt", sep= "", header=F, col.names = "Activity")
subject_train <- read.table("./train/subject_train.txt", sep="", header=F, col.names = "Subject")
train <- cbind(subject_train, activity_labels_train, triaxial_data_train) #dim 7352  563

# test datasets
triaxial_data_test<- read.table("./test/X_test.txt", sep="", header=F, col.names = features[,2]) #dim 2947  561
activity_labels_test <- read.table("./test/y_test.txt", sep="", header=F, col.names = "Activity")
subject_test <- read.table("./test/subject_test.txt", sep="", header=F, col.names = "Subject")
test <- cbind(subject_test, activity_labels_test, triaxial_data_test) #dim  2947   563

# Join the train and the test data sets
joined <- rbind(train, test) # dim 10299   563

# descriptive activity names
activity_labels<- read.table("./activity_labels.txt", sep=" ", header=F)
joined$Activity <- activity_labels$V2[match(joined$Activity,activity_labels$V1)] 

# extract only the measurements on the mean and standard deviation
joined_subset <- joined[,grepl("Subject|Activity|std()|mean()", colnames(joined))]  #dim = 10299  81

# gather
gathered<- gather(joined_subset,Signals, Normalized_Value, -Subject, -Activity) # dim = 813621  4

# separate the Signals column from the gathered dataset so that each column represent a single variable
separated<- separate(gathered, Signals, c("Signals", "Estimated_variable", "Axis"), sep="[^[:alnum:]]+", extra = "drop")
separated2<- separate(separated, Signals, c("Domain", "Signal"), sep=1) #dim = # 813621      7

# group_by and summarize the separated2 dataset by Activity and Subject
final <- separated2 %>% group_by(Activity, Subject) %>% summarize(Average_Normalized_Value = mean(Normalized_Value))

# create my_tidy_data
write.table(final, "./my_tidy_data.txt", row.name=FALSE)
