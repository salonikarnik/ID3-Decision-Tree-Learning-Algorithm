Name: Saloni Karnik
Net id: suk140030

Package: rpart

training.set - contains the training data
test.set - contains the data to be tested while performing predict() on the model
DecsionTreeModel - generates a decision tree which is split according to information gain


To compile and run the code:

1. Copy the datasets into the current working directory in R where R has been installed. 
	Installation path on my pc is: C:\Program Files\R\R-3.1.2\bin\
	So,copy all the the training_set.csv and test_set.csv files to this folder. Also copy the files, Assignment2.R and Run.R to this folder.

2. Open the command prompt as administrator in the bin folder.

3. To get the currect working directory,enter the following command:
	getwd()
 	
4. Give the following command to run the R script for file Run.R:
	Rscript Run.R training_set.csv test_set.csv > output.txt

4. This will generate a report displaying all the model plots along with the summary. A text file named 'output' will be created in the bin folder. A pdf file called Rplots will also be generted containing all the plots printed out by the Assignment2.R file.

5. In some cases, the system might already have the rpart package installed on it. In such a case, open the Assignment2.R file and comment out the line:
install.packages("rpart", dependencies=TRUE) by adding a # in front of it. So,the line will look like this:
	#install.packages("rpart", dependencies=TRUE)