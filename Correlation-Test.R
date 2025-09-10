#Author: Riley Data: 9/04/2025, Purpose: Test the Correlation

if(!require(devtools)) install.packages("devtools");devtools::install_github("kassambara/ggpubr")

# Load the library ggpubr
library(ggpubr)

#Load some dummy dataset
my_data <- mtcars

# print first few lines 
head(my_data)

# Hypothesis: Weight of the car is inverely proportional to the mpg of the car

ggscatter(my_data, x= "mpg", y = "wt", add = "reg.line", conf.int = TRUE, cor.coef =
TRUE, cor.method = "pearson", xlab = "Miles/(US) gallon", ylab = "Weight (1000 lbs)")

res <- cor.test(my_data$wt, my_data$mpg, method = "pearson") 

res





