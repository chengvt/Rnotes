library(EEM)
library(caret)
data(gluten)
gluten_uf <- unfold(gluten)
index <- colSums(is.na(gluten_uf)) == 0
gluten_ratio <- as.numeric(names(gluten))
fitControl <- trainControl()
model <- train(gluten_uf, gluten_ratio, trControl = fitControl)