library(ggplot2)
#Exercise 4.84
# shape = 4, scale = 1
y <- seq(0, 150, by=1)
f_y <- dgamma(y, shape = 4, scale = 1)
gamma_df <- data.frame(y = y,
                       density1 = f_y)

# shape = 40, scale = 1
f_y <- dgamma(y, shape = 40, scale = 1)
gamma_df$density2 <- f_y

# shape = 80, scale = 1
f_y <- dgamma(y, shape = 80, scale = 1)
gamma_df$density3 <- f_y

#plotting the graphs
ggplot() + 
  geom_line(data = gamma_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = gamma_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = gamma_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')

#a. 
ggplot() + 
  geom_line(data = gamma_df, aes(x=y, y=density1), color = "blue")+
  xlab('y') +
  ylab('f(y)')
# For alpha = 4, the graph is skewed to the right
ggplot() + 
  geom_line(data = gamma_df, aes(x=y, y=density2), color = "red")
# For alpha = 40, the graph is not that skewed. It has a bit of symmetry as well.
ggplot() + 
  geom_line(data = gamma_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
# For alpha = 80 as well the graph is not that skewed and has got a nice symmetry.

ggplot() + 
  geom_line(data = gamma_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = gamma_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
#Compared to alpha = 40 & alpha = 80, alpha = 80 seems to have better symmetry.

#b,c. The centers are different for each of them as seen in the plot. That
#is because of the changing alpha value. Since the mean of gamma distribution
#is alpha*beta. Mean is 4,40,80 respectively. The mean is increasing as the alpha
#keeps increasing.

#4.117: Applet Exercise Use the applet Comparison of Beta Density Functions 
# to compare beta density functions with 
# (α = 9, β = 7), 
# (α = 10, β = 7) and
# (α = 12, β = 7).

y <- seq(0, 1, by=0.01)
f_y1 <- dbeta(y, shape1 = 9, shape2 = 7) #(α = 9, β = 7)
f_y2 <- dbeta(y, shape1 = 10, shape2 = 7) # (α = 10, β = 7)
f_y3 <- dbeta(y, shape1 = 12, shape2 = 7) # (α = 12, β = 7)
beta_df <- data.frame(y = y,
                       density1 = f_y1,
                       density2 = f_y2,
                       density3 = f_y3)
#plotting the graphs
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
#a Are these densities symmetric? Skewed left? Skewed right?
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  xlab('y') +
  ylab('f(y)')
# Slightly skewed to the left
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  xlab('y') +
  ylab('f(y)')
# Again, slightly skewed to the left
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
# Again, slightly skewed to the left

#b What do you observe as the value of α gets closer to 12?
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
#1. The peak is getting higher, i.e. the peak density is getting higher.
#2. The mean is shifting to the right as y is increasing.
#3. As y is increasing, it is gaining more symmetry.

#c Graph some more beta densities with α > 1,β> 1, and α>β. What do you conjecture
# about the shape of beta densities with α>β and both α > 1 and β > 1?
# α>β vs α<β
y <- seq(0, 1, by=0.01)
f_y1 <- dbeta(y, shape1 = 9, shape2 = 7) #(α = 9, β = 7)
f_y2 <- dbeta(y, shape1 = 7, shape2 = 9) # (α = 7, β = 9)
beta_compare_df <- data.frame(y = y,
                      density1 = f_y1,
                      density2 = f_y2)
#plotting the graphs
ggplot() + 
  geom_line(data = beta_compare_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_compare_df, aes(x=y, y=density2), color = "red") +
  xlab('y') +
  ylab('f(y)')
#Higher α one is on right as expected.
ggplot() + 
  geom_line(data = beta_compare_df, aes(x=y, y=density1), color = "blue") +
  xlab('y') +
  ylab('f(y)')
#The higher α(9) one is left skewed.
ggplot() + 
  geom_line(data = beta_compare_df, aes(x=y, y=density2), color = "red") +
  xlab('y') +
  ylab('f(y)')
#The higher β(9) one is right skewed.

#4.118: Applet Exercise Use the applet Comparison of Beta Density Functions 
# to compare beta density functions with 
# (α = .3, β = 4)
# (α = .3, β = 7) and
# (α = .3, β = 12).

y <- seq(0, .5, by=0.01)
f_y1 <- dbeta(y, shape1 = .3, shape2 = 4) #(α = .3, β = 4)
f_y2 <- dbeta(y, shape1 = .3, shape2 = 7) # (α = .3, β = 7)
f_y3 <- dbeta(y, shape1 = .3, shape2 = 12) # (α = .3, β = 12)
beta_df <- data.frame(y = y,
                      density1 = f_y1,
                      density2 = f_y2,
                      density3 = f_y3)
#plotting the graphs
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
#a Are these densities symmetric? Skewed left? Skewed right?
#From the previous exercise, we saw that if β > α, it is right skewed. From
# the above plot as well, we see the same.

#b What do you observe as the value of β gets closer to 12?
# Not able to deduce from the plot, increasing α and β
y <- seq(0, .5, by=0.01)
f_y1 <- dbeta(y, shape1 = 4, shape2 = 7) #(α = 4, β = 7)
f_y2 <- dbeta(y, shape1 = 4, shape2 = 10) # (α = 4, β = 10)
f_y3 <- dbeta(y, shape1 = 4, shape2 = 14) # (α = 4, β = 14)
beta_df <- data.frame(y = y,
                      density1 = f_y1,
                      density2 = f_y2,
                      density3 = f_y3)
#plotting the graphs
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
#Here it is much more visible that it is right skewed. 
#And when β is increasing, the variance is increasing and the density
#graph gets compressed more.

# c Which of these beta distributions gives the highest probability of 
# observing a value larger than 0.2?
y <- seq(0, .5, by=0.01)
f_y1 <- dbeta(y, shape1 = .3, shape2 = 4) #(α = .3, β = 4)
f_y2 <- dbeta(y, shape1 = .3, shape2 = 7) # (α = .3, β = 7)
f_y3 <- dbeta(y, shape1 = .3, shape2 = 12) # (α = .3, β = 12)
beta_df <- data.frame(y = y,
                      density1 = f_y1,
                      density2 = f_y2,
                      density3 = f_y3)
#plotting the graphs
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  xlab('y') +
  ylab('f(y)')
#(α = .3, β = 4) since it has more area under the curve for y>=0.2

#d Graph some more beta densities with α < 1 and β > 1. 
# What do you conjecture about the shape of beta densities with 
# α < 1 and β > 1?
y <- seq(0, .5, by=0.01)
f_y1 <- dbeta(y, shape1 = .3, shape2 = 4) #(α = .3, β = 4)
f_y2 <- dbeta(y, shape1 = .3, shape2 = 7) # (α = .3, β = 7)
f_y3 <- dbeta(y, shape1 = .3, shape2 = 12) # (α = .3, β = 12)
f_y4 <- dbeta(y, shape1 = .3, shape2 = 15) # (α = .3, β = 15)
f_y5 <- dbeta(y, shape1 = .3, shape2 = 17) # (α = .3, β = 17)
beta_df <- data.frame(y = y,
                      density1 = f_y1,
                      density2 = f_y2,
                      density3 = f_y3,
                      density4 = f_y4,
                      density5 = f_y5)
#plotting the graphs
ggplot() + 
  geom_line(data = beta_df, aes(x=y, y=density1), color = "blue") +
  geom_line(data = beta_df, aes(x=y, y=density2), color = "red") +
  geom_line(data = beta_df, aes(x=y, y=density3), color = "green") +
  geom_line(data = beta_df, aes(x=y, y=density4), color = "pink") +
  geom_line(data = beta_df, aes(x=y, y=density5), color = "yellow") +
  xlab('y') +
  ylab('f(y)')
#They are all almost similar with small variation.

# 10.19 The output voltage for an electric circuit is specified to be 130. A sample of 40 independent
# readings on the voltage for this circuit gave a sample mean 128.6 and standard deviation 2.1.
# Test the hypothesis that the average output voltage is 130 against the alternative that it is less
# than 130. Use a test with level .05.
# Answer:
# n = 40
# Theta hat, mean(sample) = 128.6
# std = 2.1. std of theta hat is 2.1/sqrt(40)
# Ho: Mean = 130, Ha: Mean < 130. It is one-tailed test.
# Finding Z
z_stat <- (128.6-130)/(2.1/sqrt(40)) #-4.21637
#From the table, z(1.64) gives 0.05
#Since -4.21 < -1.64, we can reject the Ho
options(scipen=999)
p_val <- pt(z_stat, 39) #0.00007131664
#Also, the p-value for the z statistics is less than the given 0.05 significance 
# level, we can reject the Ho.

# 10.21 Shear strength measurements derived from unconfined compression tests for two types of soils
# gave the results shown in the following table (measurements in tons per square foot). Do the
# soils appear to differ with respect to average shear strength, at the 1% significance level?
# Answer:
#Ho: y1hat - y2hat = 0, Ha: y1hat - y2hat !=0. Hence it is a 2 tailed test
z_stat <- (1.65-1.43)/sqrt((0.26^2/30) + (0.22^2/35)) #3.648374
#z(2.33) is 0.01. Since 3.64837 > 2.33, it is in rejection region. Hence, reject Ho.

# 11.31 Using a chemical procedure called differential pulse polarography, a chemist measured the
# peak current generated (in microamperes, μA) when solutions containing different amounts of
# nickel (measured in parts per billion, ppb) are added to different portions of the same buffer.8
# Is there sufficient evidence to indicate that peak current increases as nickel concentrations
# increase? Use α = .05.

#Answer: To test, whether the coefficient of x is positive, we have to get the fitted line
x <- c(19.1, 38.2, 57.3, 76.2, 95, 114, 131, 150, 170)
y <- c(.095, .174, .256, .348, .429, .500, .580, .651, .722)
model <- lm(y~x)
print(model$coefficients)
b0 <- as.numeric(model$coefficients[1])#0.018749024
b1 <- as.numeric(model$coefficients[2])#0.004215161
#Truth: b1 is > 0, hence y increases with x. This needs to be proved by Hypothesis testing.
#Ho: b1 = 0, Ha: b1 > 0. It is one tailed test.
summary(model)
#Here p-value is 2.37e-11 which is less than the significance level 0.05.
#Hence, we can reject the Ho.


# 11.69 The manufacturer of Lexus automobiles has steadily increased sales since the 1989 launch of
# that brand in the United States. However, the rate of increase changed in 1996 when Lexus
# introduced a line of trucks. The sales of Lexus vehicles from 1996 to 2003 are shown in the
# accompanying table.
x <- c(-7, -5, -3, -1, 1, 3, 5, 7)
y <- c(18.5, 22.6, 27.2, 31.2, 33.0, 44.9, 49.4, 35.0)
# a Letting Y denote sales and x denote the coded year (−7 for 1996, −5 for 1997, through 7
# for 2003), fit the model Y = β0 + β1x + ε
model1 <- lm(y~x)
summary(model1)
#yhat <- 32.7250 + 1.8119x

# b For the same data, fit the model Y = β0 + β1x + β2x2 + ε
model2 <- lm(y~x + I(x^2))
summary(model2)
#yhat <- 35.5625 + 1.8119x - 0.1351x^2

#2. Imputation techniques
#1. Which type of missing mechanism do you prefer to get a good imputation?
#Answer: For simple problems, I would prefer simple techniques in the 
# following order of importance:
# 1. Imputation based on logical rules: this would help to impute those values 
# which implicitly needs to be there. If this can reduce a large extent of missing
# cases, then we are closer to a better model.
# The remaining ones needs to be used based on the context on the predictor:
# 2. If there are missing categorical  predictors, I would employ extra category 
# for them.
# 3. For missing continuous predictors, I would prefer to use the mean of the predictor.
# 4. Lastly, something which I may not prefer is the Last Value Carried Forward mechanism.
# Unless the situation asks for it.

# 2. Say something about simple random imputation and regression imputation of a single variable.
# Answer:
# Simple Random Imputation: It is simply imputing the missing values with the available 
# values in the predictor. The available values are randomly picked and imputed in the 
# missing values. Although it is a good starting point, it is not a recommended approach.
# Regression imputation of a single variable: We first fit a regression for the missing variable. 
# When we run the regression we don't consider the missing value entries. 
# Also, none of the independent variables should be missing. 
# Then we predict the values used in the fitting and overwrite it with these values. 
# Then, we run the simple random imputation method with these values to impute 
# the missing values. One catch here is that, since we are  overwriting the data, 
# we may give a false impression of data.

# 3. Explain shortly what Multiple Imputation is. 
# Answer: The starting point would be to use  multivariate normal or t-distribution 
# for continuous variables  and a multinomial distribution for discrete variables. 
# Iterative Regression Imputation: Here we employ 2 methods. First a crude method 
# like Simple Random Imputation to fill all the missing variables, except 1 missing variable.
# For this missing variable we employ the Deterministic imputation method explained above. 
# We do this iteratively for all the missing variables.