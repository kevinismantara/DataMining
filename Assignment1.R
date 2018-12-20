# Programming Assignment 1
# Name: Kevin Ismantara
library("stats")
library("cluster")
library("clusteval")
library("BBmisc")
library("ggplot2")

### Task 1
AlcoholData <- read.csv(file="./wine.csv", header=TRUE, sep=",")
print (AlcoholData)

### Task 2
NormalizedData <- normalize(AlcoholData, method = "standardize", range = c(-1, 1), margin = 1L, on.constant = "quiet")
print (NormalizedData)

### Task 3
centers <- 4
cluster <- kmeans(NormalizedData, centers, iter.max = 25, nstart = 1)
silhouettePlot <- silhouette(cluster$cluster, dist(NormalizedData))
plot(silhouettePlot) #Average silhouette score: 0.28 (4 clusters)

### Task 4
#From what i have experimented, these 2 attributes produce the best result
plot(WineData[c("Alcohol", "Flavanoids")], col = cluster$cluster) 

### Task 5
bestK <- 3
bestCluster <- kmeans(NormalizedData, bestK, iter.max = 25, nstart = 1)
bestSilhouettePlot <- silhouette(bestCluster$cluster, dist(NormalizedData))
plot(bestSilhouettePlot) #Average silhouette score: 0.31 (3 clusters)


### Task 6
distance <- dist(NormalizedData, method="euclidean")
completeData <- hclust(distance, method = "complete")
averageData <- hclust(distance, method = "average")
singleData <- hclust(distance, method = "single")
plot(completeData)
plot(averageData)
plot(singleData)

### Task 7
cutComplete <- cutree(completeData, 3)
cutAverage <- cutree(averageData, 3)
cutSingle <- cutree(singleData, 3)
print(cutComplete)
print(cutAverage)
print(cutSingle)

### Task 8
bestKmeansSimilarityScore <- cluster_similarity(cluster$cluster, bestCluster$cluster, similarity = c("rand"), method = "independence")
completeLinkSimilarityScore <- cluster_similarity(cluster$cluster, cutComplete, similarity = c("rand"), method = "independence")
averageLinkSimilarityScore <- cluster_similarity(cluster$cluster, cutAverage, similarity = c("rand"), method = "independence")
singleLinkSimilarityScore <- cluster_similarity(cluster$cluster, cutSingle, similarity = c("rand"), method = "independence")
print(bestKmeansSimilarityScore) #Score: 0.9215388
print(completeLinkSimilarityScore) #Score: 0.6900908
print(averageLinkSimilarityScore) #Score: 0.6509871
print(singleLinkSimilarityScore) #Score: 0.274043



