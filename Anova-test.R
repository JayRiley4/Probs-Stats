#Author:Jaevon Riley;Date:09/23/25;Purpose:Test ANOVA

library("dplyr")

#Read Dummy dataset
PATH <- "https://raw.githubusercontent.com/guru99-edu/R-Programming/master/poisons.csv"

#Load the data poisons.csv
df <- read.csv(PATH) %>% select(-X) %>% mutate(poison = factor(poison, ordered = TRUE)) 

#Plot the dataset
ggplot(df, aes(x = poison, y = time, fill = poison)) + geom_boxplot() 
+ geom_jitter(shape = 15, color = "steelblue, position = 
position_jitter(0.21)) + theme_classic()


anova_one_way <- aov(time~poison, data = df) summary(anova_one_way)


Df Sum Sq Mean Sq F value   Pr(>F)    
poison       2  1.033  0.5165   11.79 7.66e-05 ***
Residuals   45  1.972  0.0438                     
---
Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

