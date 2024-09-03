

cars <- read.csv("https://raw.githubusercontent.com/maibennett/sta235/main/exampleSite/content/Classes/Week2/1_OLS/data/SoCalCars.csv", stringsAsFactors = FALSE)
names(cars)

View(cars)


# Used cars in South California (from this week's JITT)

# price = Rating + Miles + Luxury + Year + LuxuryXYear

hist(cars$mileage)

mileage

rating

# From 1966 to 2021
table(cars$year)

library(tidyverse)

luxury_brands <- c("Audi", "BMW", "Cadillac", "Ferrari", "Jaguar", "Lamborghini", "Land Rover", "Lexus",
                   "Maserati", "Mercedes-Benz", "Porsche", "Rolls-Royce", "Tesla", "Volvo")

# hist(cars_mod$year)
# cars_mod = cars %>% filter(type != "New" & mileage >= 10000 & mileage <= 150000 & price < 100000 & year >= 1970) %>%
#   mutate(luxury = ifelse(make %in% luxury_brands, 1, 0),
#          price = price/1000,
#          mileage = mileage/1000,
#          year = year - 1970)


cars_mod = cars %>% filter(type != "New" & mileage >= 10000 & mileage <= 150000 & price < 100000 & year >= 1970) %>%
  mutate(luxury = ifelse(make %in% luxury_brands, "yes", "no"),
         price = price,
         mileage = mileage)

names(cars_mod)


# Boxplot - show the difference 
# ggplot(cars_mod, aes(x = as.factor(luxury), y = price)) +
#   geom_boxplot()

ggplot(cars_mod, aes(x = luxury, y = price)) +
  geom_boxplot()

options(scipen = 999)
lm <- lm(price ~ year, data = cars_mod) #COMPLETE THIS FUNCTION

lm <- lm(price ~ mileage, data = cars_mod) #COMPLETE THIS FUNCTION
lm <- lm(price ~ mileage + luxury, data = cars_mod) #COMPLETE THIS FUNCTION

lm <- lm(price ~ mileage*luxury, data = cars_mod) #COMPLETE THIS FUNCTION

# lm <- lm(price ~ year*luxury, data = cars_mod) #COMPLETE THIS FUNCTION
summary(lm)
## Let's run a regression of price on mileage, year, and rating.

lm1 <- lm(price ~ mileage + year + rating, data = cars_mod) #COMPLETE THIS FUNCTION
summary(lm1)

ggplot(cars_mod, aes(x = year, y = price, col = as.factor(luxury))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

ggplot(cars_mod, aes(x = year, y = log(price), col = as.factor(luxury))) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

lm1 <- lm(price ~ mileage + luxury, data = cars_mod)
summary(lm1) #Interpret the intercept


lm2 <- lm(price ~ mileage + luxury + rating + year, data = cars_mod)
summary(lm2) #Interpret the intercept

lm2 <- lm(price ~ mileage + rating + year*luxury, data = cars_mod)
summary(lm2) #Interpret the intercept

lm3 <- lm(log(price) ~ mileage + rating + year*luxury, data = cars_mod)
summary(lm3) #Interpret the intercept


lm3 <- lm(price ~ mileage + badge, data = cars_mod)
summary(lm3) #Interpret the intercept

unique(cars_mod$badge)

cars_mod <- cars_mod %>%
  mutate(badge = factor(badge, 
                           levels = c("Good Deal", "Great Deal", "", "Fair Price"), 
                           labels = c("Good Deal", "Great Deal", "No Badge", "Fair Price")))


write.csv(cars_mod,"Dropbox/FALL_2024_STA235H/Slides_F_2024/Class_02/script_class_02/cars_luxury.csv")

lm3 <- lm(price ~ mileage + Badge, data = cars_mod)
summary(lm3) #Interpret the intercept
ggplot(cars_mod, aes(x = mileage, y = price, col = Badge)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)

ggplot(cars_mod, aes(x = mileage, y = price, col = luxury)) +
  geom_point() +
  geom_smooth(method = "lm", se = FALSE)


lm2 <- lm(price ~ mileage*luxury, data = cars_mod)
summary(lm2) #Interpret the intercept

ggplot(cars_mod, aes(x = badge2, y = year)) +
  geom_boxplot()
