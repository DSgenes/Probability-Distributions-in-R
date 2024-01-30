
###Negative Binomial Distribution###
#  It models the number of failed bernoulli trials that occur before a fixed
#  number of successes.

#There are four basic functions in R for calculating in the negative bionomial
#distribution.

#rnbinom(n,r,p) generates n random values from negative binomial distribution
#with r total successes and probability of success p.

#dnbinom(x,r,p) is the probability mass function of the negative binomial 
#distribution with r total failures and probability of success p.As usual in
#R x can be a vector.

#pnbinom(x,r,p) is the cumulative probability mass function of the negative
#binomial distribution with r total failures and probability of success p.
#Again x can be a vector.

#qnbinom(π,r,p) is the inverse cdf of the negative binomial distribution 
#with parameters r and p.It returns the smallest value x such that 
#qnbinom(x,r,p) ≥ π.
--------------------------------------------------------------------------
#Example.A cereal company randomly places 1 of 5 different toys in each
#box of its cereal.One particular child is trying to collect 6 copies of
#their favorite toy.This is a negative binomial experiment with p=0.2 and
#r=6.

#1.What is the probability that they find the 6th copy of their favorite
#after finding exactly 25 other toys?

#2.What is the probability that they must open at least 20 disappointing 
#boxes before finding the 6th copy of their favorite toy?
  
#3.Simulate the number of failures before the 6th success 1000 times and
#produce a histogram of the results.

#Problem1.
#We want to know the probability of 25 failures before the sixth success
#when the probability in each trial is .2 and in this case it's just over
#three percent

dnbinom(25, 6, .2)

#Problem2.
#Finding the probability of less than 20 failures means less than or equal
#to 19 failures
#this is just 62% in this case

1-pnbinom(19, 6, .2)

#Problem3.
#We want a thousand simulations so you can picture this as a thousand different
#children each doing the same thing going out and buying boxes until they
#get six copies of their favourite toy
#the histogram is slightly rightward skew
boxes <- rnbinom(1000, 6, .2)

library(tidyverse)

qplot(boxes, geom = "histogram", col = I("black"))
--------------------------------------------------------------------------