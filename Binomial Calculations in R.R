
###Probability Distribution -
#   A probability distribution is a mathematical function that describes the probability of different
#  possible values of a variable. 

#Types - 1. Discrete Probability Distributions
#       (Binomial Distributuion, Poisson Distribution)

#        2.Continuous Probability Distributuion 
#       (Normal Distribution, Uniform Distributuion)

###Binomial Distributuion###
#    Binomial distribution is a common probability distribution that models the probability of 
#    obtaining one of two outcomes under a given number of parameters. 

#There are four basic functions in R for calculating in the binomial distribution

#rbinom(n, size, prob) generates n random values from b(size,prob)

#dbinom(x, size, prob) returns P(X=x) in b(size, prob).If x is a vector of integers ,then R compute
#the probability for each value in x.

#pbinom(x, size, prob) returns P(X <= x) in b(size, prob)

#qbinom(p, size, prob) returns the smallest value x such that pbinom(x, size, prob)=q.That is, it
#computes quantiles in b(size,prob).
--------------------------------------------------------------------------------------------------
#Problem statements.
#1. Let X represent the number of sixes in 10 rolls of a fair die.Simulate 50 runs of this 
#   probability experiment.

#2. According to a recent survey, 72% of Americans prefer dogs to cats. If 8 Americans are chosen 
#   at random, what is the probability that 6 prefer dogs? That fewer than 6 do?

#3. A weighted coin has a 42% chance of coming up heads. What is the expected number of heads in 5 
#   tosses?The standard deviation?Construct a probability histogram for X, the number of heads in
#   5 tosses.

#Problem1:
#First we're going to be generating random numbers by using rbinom command...we need three arguments
#first the number of times we're going to generate random numbers, secondly we specify the size for
#the binomial distribution and then the probability od success in this case is 1/6.

#so we get 50 random numbers all between 0 and 10.We can summerize what we've by using table 
#command.

rbinom(50, 10, 1/6)
table(rbinom(50, 10, 1/6))

#Problem2. 
#so to get the probability of getting exactly six succeses in eight trials
#So we're interested in six then sample size and the probability of success 0.72
dbinom(6, 8, .72)

#so there's a 30.58 percent chance that six of the eight people surveyed will prefer dogs to cats
#now we'd like to know the probability that fewer than six do.This going to be a pbinom a cumulative
#probability question.We want the probability of getting five or less which to say slightly 
#differently is fewer than six
pbinom(5, 8, .72)

#Problem3.
x <- 0:5
x

#let's get a vector of probabilities each one is going to be a dbinom we're going to want to do all
#of the values of x from a binomial distribution of size 5 and a probability of success of 0.42
p <- dbinom(x, 5, 0.42)
p

#a vector of probabilities ofcourse its sum should be one
sum(p)

#we want to get the mean of all those x values weighted according to their probabilities
weighted.mean(x,p)

#We can do the sample rather the variance by doing a weighted mean of difference between the x values
#and that mean squared again weighted according to the probability 
weighted.mean((x - 2.1)^2, p)

#to get the standard deviation we need the square root of variance 
weighted.mean((x - 2.1)^2, p)^ .5

#let's wrap up by getting this probability histogram
library(tidyverse)
qplot(x, weight = p, geom = "histogram")

#to fill all the spaces between the bars by defining our bin size
qplot(x, weight = p, geom = "histogram", bins = 6, col = I("black"))
----------------------------------------------------------------------------------------------------
