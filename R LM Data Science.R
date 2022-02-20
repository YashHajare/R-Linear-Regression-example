library(ggplot2)

data = read.csv("Salary_Data.csv")

head(data)
dim(data)
View(data)

scatter.smooth(x=data$Salary, y=data$YearsExperience, main="Salary ~ YearsExperience")

ggplot() +
  geom_point(aes(x = data$Salary,
                 y = data$YearsExperience), colour = 'violet') +
  ggtitle('Salary ~ Experience') +
  xlab('Salary') +
  ylab('Experience')

cor(data$Salary, data$YearsExperience)

lm_model = lm(formula = Salary ~ YearsExperience, data = data)
summary(lm_model)

#Prediction for 1 year of experience
n_1 <- data.frame(YearsExperience=c(1))
pred = predict(regressor, newdata = n_1)
paste("For 1 year of exp, Salary would be:", pred)

#Prediction for 5 year of experience
n_2 <- data.frame(YearsExperience=c(5))
pred = predict(regressor, newdata = n_2)
paste("For 5 year of exp, Salary would be:", pred)

#Prediction for 7 year of experience
n_2 <- data.frame(YearsExperience=c(7))
pred = predict(regressor, newdata = n_2)
paste("For 7 year of exp, Salary would be:", pred)
