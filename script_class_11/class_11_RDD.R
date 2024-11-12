library(tidyverse)

# Create category that identifies if the student went to a class that has less than 40 students
# or went to smaller class that was result of a split of a class with more than 40 students.

# split - greater than 40
# intact - less than equal to 40

israel = israel %>% 
  mutate(class_split = ifelse(cohort.size > 40,"Yes","No"))

ggplot(israel, aes(x = cohort.size, y = read, color = class_split)) + 
  geom_point() +
  geom_vline(xintercept = 40, linetype = "dashed")
  
write.csv(israel,"Dropbox/FALL_2024_STA235H/Slides_F_2024/Class_11/script_class_11/class_1999.csv",row.names = FALSE)
