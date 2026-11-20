library(reticulate)
# reticulate::py_install("tabicl")
# One-time setup (skip if already done)
# py_require("tabicl")

penguins = read.csv("Dropbox/Application_SDS/presentation/sds_presentation/week_10_docs/penguins.csv")

py_require("tabicl")

tabicl <- import("tabicl")

# Simulate a binary problem with two variables
set.seed(123)
n  <- 500
x1 <- rnorm(n)
x2 <- rnorm(n)
y  <- as.integer(x1 + x2 + rnorm(n, sd = 0.5) > 0)   # 0/1 label

df <- data.frame(x1, x2, y)

df <- penguins
n <- nrow(df)
sum(is.na(df))

df = na.omit(df)

# Train/test split (70/30)
idx   <- sample(n, 0.7 * n)
train <- df[idx, ]
test  <- df[-idx, ]

X_train <- as.matrix(train[, c("bill_length_mm", "bill_depth_mm")])
X_test  <- as.matrix(test[, c("bill_length_mm", "bill_depth_mm")])
y_train <- train$sex
y_test  <- train$sex

# Fit (stores the context) and predict
clf <- tabicl$TabICLClassifier()
clf$fit(X_train, as.factor(y_train))

pred  <- as.integer(clf$predict(X_test))
proba <- clf$predict_proba(X_test)    # columns follow clf$classes_

# Accuracy
accuracy <- mean(pred == y_test)
accuracy

#--------------------
# library(usethis)
# create_from_github("SDS322E-26FALL/1302-compare-models", fork = FALSE)

# library(reticulate)
# # library(randomForest)
# 
# # py_require("tabicl")   # one-time setup
# tabicl <- import("tabicl")

# Binary problem: keep two of the three species
df <- iris[iris$Species != "setosa", c("Petal.Length", "Petal.Width", "Species")]
df$Species <- factor(df$Species)          # drops the unused level

# 70/30 split
set.seed(1)
idx   <- sample(nrow(df), 0.7 * nrow(df))
train <- df[idx, ]
test  <- df[-idx, ]

features <- c("Petal.Length", "Petal.Width")
X_train  <- as.matrix(train[, features])
X_test   <- as.matrix(test[, features])
y_train  <- as.character(train$Species)   # pass labels as plain strings
y_test   <- as.character(test$Species)

# TabICL
clf <- tabicl$TabICLClassifier()
clf$fit(X_train, y_train)
tab_pred <- as.character(clf$predict(X_test))

tab_acc <- mean(tab_pred == y_test)

# Random forest on the same split
# rf      <- randomForest(Species ~ Petal.Length + Petal.Width, data = train)
# rf_pred <- as.character(predict(rf, newdata = test))
# rf_acc  <- mean(rf_pred == y_test)

# c(TabICL = tab_acc, RandomForest = rf_acc)
# 
# # Confusion matrix for TabICL
# table(Predicted = tab_pred, Actual = y_test)


df <- iris[iris$Species != "setosa", c("Petal.Length", "Petal.Width", "Species")]
df$Species <- factor(df$Species)          # drops the unused level

# 70/30 split
set.seed(1)
idx   <- sample(nrow(df), 0.7 * nrow(df))
train <- df[idx, ]
test  <- df[-idx, ]

features <- c("Petal.Length", "Petal.Width")
X_train  <- as.matrix(train[, features])
X_test   <- as.matrix(test[, features])
y_train  <- as.character(train$Species)   # pass labels as plain strings
y_test   <- as.character(test$Species)

# TabICL
clf <- tabicl$TabICLClassifier()
clf$fit(X_train, y_train)
tab_pred <- as.character(clf$predict(X_test))

tab_acc <- mean(tab_pred == y_test)