# Regression: vote02 ~ treatment (GOTV data)
gotv <- read.csv("GOTV.csv", stringsAsFactors = TRUE)

fit <- lm(vote02 ~ treatment + factor(competiv) + factor(state), data = gotv)
summary(fit)
