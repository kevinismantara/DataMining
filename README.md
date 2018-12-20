# DataMining
Apply data mining techniques to several datasets. These are class assignments for a data mining class

# Assignment 1 Tasks: 
1. Read in the Wine dataset. Data should be read from the current folder (i.e, “./wine.csv”).
2. Normalize the attributes. Explain your approach.
3. Perform K-means clustering for k = 4. Report the silhouette score of the resulting clustering.
4. Try out several pairs of attributes and produce scatter plots of the clustering from task 3 for these
pairs of attributes. By inspecting these plots, determine a pair of attributes for which the clusters are
relatively well-separated and submit the corresponding scatter plot.
5. Find the best number of clusters for K-means clustering, based on the silhouette score. Report
the best number of clusters and the silhouette score for the corresponding clustering. How strong is
the discovered cluster structure?
6. Perform hierarchical cluster analysis on the dataset using the algorithms complete linkage,
average linkage and single linkage. Plot the dendrograms resulting from the different methods.
Discuss the commonalities and differences between the three dendrograms and try to explain the 
reasons leading to the differences.
7. Cut all of the three dendrograms from task 6 to obtain a flat clustering with the number of
clusters determined as the best number in task 5.
8. To perform an external validation of the clustering results, use the class label (attribute Wine).
What is the Rand Index for the best K-means clustering? What are the values of the Rand Index for
the flat clusterings obtained in task 7 from complete linkage, average linkage and single linkage?

# Assignment 2 Tasks:
1. Read in the dataset and split the dataset randomly into 80% training data and 20% test data using
the function sample(). To make sure that everybody uses the same training/test split, set the seed of
sample to 1 using command set.seed(1).
2. Report the number of missing values per attribute in the training and test dataset.
3. You can use only past data to predict the future. Assume that you want to predict the survival of
a passenger at the time of the accident, i.e. when the Titanic hit the iceberg. With this assumption in
mind, which attributes do you use as features?
4. How do you deal with missing values in the different attributes? Report your plan. Preprocess the
dataset according to your plan.
5. Using package tree, learn a decision tree from the training data. Plot the resulting tree. What is
the size of the tree? What is the accuracy of the tree on the test dataset?
6. Analyze the importance of attributes in your decision tree. Report the top three most important
attributes in decreasing order of importance and explain your choice. What knowledge about the
survival of passengers can you learn from the decision tree?
7. Prune your decision tree learnt in task 5. To do so, use cost complexity pruning and perform
cross-validation in order to determine the optimal level of tree complexity. What is the size of the
pruned decision tree?

# Assignment 3 Tasks:
1. Use package randomForest to learn a random forest from the training data with the number of
trees set to 100. Apply the random forest model to predict the class labels of the test data. What is
the accuracy of the model? How does the accuracy of the random forest model compare to that of
the best decision tree model from Programming Assignment 2? Using the pROC package, plot the
ROC curve of your random forest model. What is the AUC?
2. Use functions importance() and varImpPlot() to analyze the importance of the different
attributes across the whole forest. Report the top three most important attributes in decreasing order
of importance and explain their relevance for the classification task.
3. Learn a logistic regression model from the training data using the caret package and the glmnet
method of the function train(). What are the most significant three attributes of your model?
4. Apply the logistic regression model to predict the class labels of the test data. Plot the confusion
matrix. What is the accuracy of the model? Plot the ROC curve of your logistic regression model.
What is the AUC of your logistic regression model?
5. Using the function tune.svm() from package e1071 and the training dataset, obtain the best
parameters for a linear SVM and for a radial kernel SVM. What are the best parameters for the
linear and for the radial kernel?
6. Apply the tuned linear SVM model and the tuned radial kernel SVM model to predict the class
labels of the test data. What is the test accuracy of the two models? Plot the ROC curve of both
SVM models. What is the AUC of the two models?

# Assignment 4 Tasks: 
1. Plot a histogram of the number of items (number of categories) per transaction. What do you
observe? How can you explain this observation?
2. How many frequent itemsets, closed frequent itemsets, and maximal frequent itemsets do you
obtain with minimum support = 0.001? How many with minimum support = 0.01?
3. What are the 10 itemsets with the highest support, and what is their support?
4. How do you explain the relatively small number of frequent itemsets for the already low
minimum support of 0.01? How do you explain the observation that the numbers of frequent
itemsets, closed frequent itemsets, and maximal frequent itemsets are so similar?
5. At minimum support = 0.01, how many association rules do you obtain with minimum
confidence = 0.9? How far do you need to lower the minimum confidence to obtain more than 10
rules?
6. For minimum support = 0.01 and minimum confidence = 0.5, print only the rules that have
"whole milk" in their right hand side.
7. Among the rules produced in task 6, which ones have the highest lift? How interesting are they?
