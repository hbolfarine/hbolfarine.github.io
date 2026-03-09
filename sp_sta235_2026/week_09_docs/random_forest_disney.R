library(tidyverse)
library(mosaic)
library(tidymodels)
library(rpart.plot)
library(randomForest)

#####################################################################
### Random Forests on Titanic ###
titanic = titanic_age

### Data Prep ###
# A couple of ways to look at our data
head(titanic)
glimpse(titanic)

# Define a categorical variable of adults vs children
titanic = titanic %>% 
  mutate(adult = ifelse(age >= 18,1,0))

# Convert categorical variables to "factors"
titanic$adult = as.factor(titanic$adult)
titanic$sex = as.factor(titanic$sex)
titanic$passengerClass = as.factor(titanic$passengerClass)
titanic$survived = as.factor(titanic$survived)

# rename dataframe so remaining code is more reusable
data = titanic

### Building a Classification Model ###
# Split the data into training and testing sets
set.seed(436)
data_split <- initial_split(data, prop = 0.80)
train_data <- training(data_split)
test_data <- testing(data_split)

# Build the random forest to predict SURVIVED
rf = randomForest(survived ~ adult + sex + passengerClass, data = train_data)
print(rf)

# Feature Importance
importance(rf)

varImpPlot(rf,
           sort=T,
           n.var=10,
           main="Top 10 Variable Importances")

# Model error
plot(rf)

# Predict on test data
predictions = predict(rf,test_data)
test_data = test_data %>% 
  mutate(pred = predictions)

# Evaluate model accuracy
xtabs(~pred +survived,data=test_data)

### Building a Regression Model ###
# Build the random forest to predict AGE
rf = randomForest(age ~ survived + sex + passengerClass, data = train_data)
print(rf)

# Predict on test data
predictions = predict(rf,test_data)
test_data = test_data %>% 
  mutate(pred = predictions)
head(test_data)

rmse(test_data,truth = age,estimate = pred)
rsq(test_data,truth = age,estimate = pred)

# Model error
plot(rf)

# Feature Importance
importance(rf)

varImpPlot(rf,
           sort=T,
           n.var=10,
           main="Top 10 Variable Importances")

#####################################################################
### Random Forests on Disney+ ###
disney <- read.csv("C:/Users/randi/Downloads/disney.csv")

# convert unsubscribe column to a factor
disney$unsubscribe = as.factor(disney$unsubscribe)

disney = disney %>% 
  select(female,city,age,logins,mandalorian,unsubscribe)

# Split the data into training and testing sets
set.seed(436)
data_split <- initial_split(disney, prop = 0.80)
train_data <- training(data_split)
test_data <- testing(data_split)

disney_rf = randomForest(unsubscribe ~ ., 
                         data =train_data)
print(disney_rf)
importance(disney_rf) 

varImpPlot(disney_rf,
           sort=T,
           n.var=10,
           main="Top 10 Variable Importances")


