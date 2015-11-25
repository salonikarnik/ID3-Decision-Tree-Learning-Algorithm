#####Installing rpart package#####
#install.packages("rpart",dependencies = TRUE)

DecisionTreeModel <- function(training.set,test.set) {
  
  library(rpart)
  
  #####Extract Training Data#####
  training.set
  str(training.set)
  
  #####Creating Decision Tree Model#####
  tree <- rpart(Class ~ XB + XC + XD + XE + XF + XG + XH + XI + XJ + XK + XL + XM + XN + XO + XP + XQ + XR + XS + XT + XU,data=training.set,method="class",parms = list(split = 'information'), minsplit=2,minbucket=1)
  
  #####Print summary of model#####
  summary(tree)
  
  ######Plotting the decision tree######
  par(mar=rep(0.1,4))
  plot(tree,uniform=T,compress = T)
  text(tree)
  
  ######Pruning the tree#####
  plotcp(tree)
  printcp(tree)
  prunedTree <- prune(tree, cp=(tree$cptable[which.min(tree$cptable[, "xerror"]), "CP"]))
  par(mar=rep(0.1,4))
  plot(prunedTree,uniform=T,compress = T)
  text(prunedTree)
  
  #####Testing the Model using test set#####
  str(test.set)
  prediction <- predict(prunedTree,test.set,type = "class")
  predTable <- table(prediction,test.set$Class)
  
  #####Calculating accuracy#####
  accuracy <- sum(diag(predTable))/sum(predTable)
  accuracy*100
}

