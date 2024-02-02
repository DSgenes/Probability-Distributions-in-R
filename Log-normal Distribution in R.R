###Log-normal Calculations###
#   The log-normal distribution models data for which the logarithm is normally distributed.This
#   means that all the observations are always positive and they differ by several orders of
#   magnitude.It is completely determined by two parameters  μ and 𝜎.

#There are 4 basic functions in R for calculating in the log normal distribution.
μ,𝜎
#rlnorm(n,μ,𝜎) generates n random values from the log-normal distribution with parameters μ 
#and 𝜎.

#plnorm(q,μ,𝜎) returns the probability that a random observation X is less than or equal to
#q.It's the cumulative distribution function of the log-normal, P(X ≤ q)

#qlnorm(p,μ,𝜎) returns the quality q such that plnorm(q,μ,𝜎)=p.It's the inverse cdf of the
#specified log-normal distribution.Again, p can be a vector.

#dlnorm(x,μ,𝜎) is the probability density function for the specified log-normal distribution.
---------------------------------------------------------------------------------------------
#Example1.Freshman undergraduate enrollments at U.S. colleges have an approximate log-normal
#distribution with parameters μ = 6.1 and𝜎 = 1.0.
  
#1.What is the probability that a randomly-selected college enrolls between 500 and 1000 freshman
#in a year?
  
#2.What is the 99th percentile for U.S. college enrollment?
  
#3.Simulate selecting 100 colleges at random.Plot a histogram of freshman enrollments at 
#those colleges.

#Problem1.
#when i want to get the probability that a randomly selected value is in between two values
#i need to take a difference between my cdfs
#i get a probability of a little more than 24%

plnorm(1000, 6.1, 1.0) - plnorm(500, 6.1, 1.0)

#Problem2.
#in the form of a percentile and asked to find a value so qlnorm in this case the value we're
#going to plug in is going to be 0.99

qlnorm(.99, 6.1, 1.0)

#Problem3.
#so i want 100 values from the same distribution with the mean of 6.1 and a sd of 1.0
#these 100 values might be freshman college enrollment numbers
fresh <- rlnorm(100, 6.1, 1.0)
fresh

#Plotting a histogram.
library(tidyverse)
qplot(fresh, geom = "histogram")
---------------------------------------------------------------------------------------------
#Example2.Freshman undergraduate enrollments at 8 randomly selected schools in the college
#dataset are given below.
# 605, 97, 736, 143, 622, 2408, 345, 324

x <- c(605, 97, 736, 143, 622, 2408, 345, 324)
x

ln(x)

sd(x)

freshmanundergraduate <- (x)
qplot(x)

