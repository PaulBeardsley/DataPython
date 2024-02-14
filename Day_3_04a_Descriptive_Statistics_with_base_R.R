# Descriptive statistics with R

# set working directory
setwd("C:\\Users\\Admin\\Desktop\\R code")
# get working directory again - to confirm
getwd()

# data to work with
z <- c(3.5, 1, 4.7, 12, 33.7)
zn <- c(3.5, 1, 4.7, 12, NA, 33.7)

# Measures of central tendency

# Median

# Data without missing values
median_value_z <- median(z)
# Data with missing values
median_value_zn <- median(zn)
median_value_zn <- median(zn, na.rm = TRUE)

# Mode
# No standard built-in model function
modes <- function(x) {
  ux <- unique(x)
  tab <- tabulate(match(x, ux))
  ux[tab == max(tab)]
}

# data
zz <- c(1, 4, 4, 5, 5, 8, 2, 7, 7, 7)
zzz <- c(1, 4, 4, 5, 5, 8, 2, 7, 7)

# unimodal data set
mode_zz <- modes(zz)
mode_zz

# multimodal data set
mode_zzz <- modes(zzz)
mode_zzz

# Mean

# Data without missing values
mean_value_z <- mean(z)
# Data with missing values
mean_value_zn <- mean(zn)
mean_value_zn <- mean(zn, na.rm = TRUE)

# Weighted mean
weights <- c(0.2, 0.4, 0.6, 0.3, 0.3)
w_mean_z <- weighted.mean(z,weights)
w_mean_z

# Measures of spread (variability)

# Range
range_z <- range(z, na.rm = TRUE)
range_z

# Interquartile range (IQR)
IQR_z <- IQR(z, na.rm = TRUE)
IQR_z

# Variance

# sample variance
var_z <- var(z, na.rm = TRUE)
var_z

# population variance
n <- length(z)
var_h_m_pop <- var(z) * (n-1)/n

# standard deviation
std_var_z <- sd(z, na.rm = TRUE)
std_var_z

# Bivariate
x <- -10:10
y <- c(0, 2, 2, 2, 2, 3, 3, 6, 7, 4, 7, 6, 6, 9, 4, 5, 5, 10, 11, 12, 14)

# covariance
covar_x_y <- cov(x,y)
covar_x_y

# correlation
correl_x_y <- cor(x,y)
correl_x_y
