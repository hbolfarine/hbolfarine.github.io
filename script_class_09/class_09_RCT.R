
vaccine_group <- c(rep(0, 14123), rep(1, 11))   # 11 out of 14,134 got COVID-19
placebo_group <- c(rep(0, 13888), rep(1, 246))  # 185 out of 14,073 got COVID-19
data.rct = data.frame(vaccine_group,placebo_group)
write.csv(data.rct,"Dropbox/FALL_2024_STA235H/Slides_F_2024/Class_09/script_class_09/data_rct.csv")

prop(~vaccine_group, data = data.rct)

prop(~placebo_group, data = data.rct)

0.0007782652 - 0.01740484

prop.test(placebo_group ~ vaccine_group, data = data.rct, success = 1)

library(mosaic)
xtabs(~ vaccine_group + placebo_group, data = data.rct)
prop.test(vaccine_group ~ placebo_group, data = data.rct)

treatment <- c(rep(0, 14134), rep(1, 12))   # 11 out of 14,134 got COVID-19
control <- c(rep(0, 13966), rep(1, 180))  # 185 out of 14,073 got COVID-19
flu_rct = data.frame(treatment,control)
write.csv(data.rct,"Dropbox/FALL_2024_STA235H/Slides_F_2024/Class_09/script_class_09/flu_rct.csv")

prop(treatment~control, data = flu_rct)

diffprop(treatment~control, data = flu_rct)

14134 + 12
13966 + 180


vaccine_group <- c(rep(0, 14123), rep(1, 11))   # 11 out of 14,134 got COVID-19
placebo_group <- c(rep(0, 13888), rep(1, 246))  # 246 out of 13,888 got COVID-19

# Create treatment labels (0 = placebo, 1 = vaccine)
treatment_vaccine <- rep(1, length(vaccine_group))
treatment_placebo <- rep(0, length(placebo_group))

# Combine both groups into one data frame
effect_data <- data.frame(
  treatment = c(treatment_vaccine, treatment_placebo),
  outcome = c(vaccine_group, placebo_group)
)

diffprop(outcome~treatment, data = effect_data)

prop(~vaccine_group, data = data.rct)

prop(~placebo_group, data = data.rct)

prop.test(outcome~treatment, data = effect_data, success = 1)

write.csv(effect_data,"Dropbox/FALL_2024_STA235H/Slides_F_2024/Class_09/script_class_09/data_rct.csv")

# vaccine_group <- c(rep(0, 14123), rep(1, 11))   # 11 out of 14,134 got COVID-19
# placebo_group <- c(rep(0, 13888), rep(1, 246))  # 185 out of 14,073 got COVID-19
# data.rct = data.frame(vaccine_group,placebo_group)
# write.csv(data.rct,"Dropbox/FALL_2024_STA235H/Slides_F_2024/Class_09/script_class_09/data_rct.csv")



