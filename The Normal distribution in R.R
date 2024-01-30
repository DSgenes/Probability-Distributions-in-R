
###The Normal distribution in R###
#  A normal distribution is a type of continuous probability distribution in which data are
#  symmetrically distributed with no skew. Most values cluster around a central region, 
#  with values tapering off as they go further away from the center. The measures of central 
#  tendency (mean, mode, and median) are exactly the same in a normal distribution.

#There are 4 basic functions in R for calculating in the normal distribution.

#rnorm(n,μ,𝜎) generates n random values from the normal distribution with μ and 𝜎.
#(If you leave out either one of those parameters R will default to natural values mu equals
#zero and sigma equals one so basically it favors the standard normal distribution)

#pnorm(x,μ,𝜎) is the cumulative distribution function of the normal distribution with mean
#and standard deviation.As usual , x can be a vector.

#qnorm(p,μ,𝜎) is the inverse cdf of the normal distribution with mean μ and sd 𝜎.It returns
#the value x such that pnorm(x,μ,𝜎) = p.As usual,p can be a vector.

#dnorm(x,μ,𝜎) is the probability density function of the normal distribution with mean μ and
#sd 𝜎.
---------------------------------------------------------------------------------------------
#Example.Flipper lengths of a certain kind of penguins are normally distributed with mean 
#192.9mm and standard deviation 7.1mm.
  
#1.What is the probability that a randomly-selected penguin has a flipper less than 200mm
#long?More than 200mm?
  
#2.What is the 90th percentile for flippers length in these penguins?
  
#3.Simulate 500 random selections from this population and plot the results.
  
#Problem1.
pnorm(200, 192.9, 7.1)

#to get the probability of randomly getting a penguin with a flipper longer than 200mm we
#can subtract from 1 
1 - pnorm(200, 192.9, 7.1)

#Problem2.
#here we're being given a percentile a probability an area and we want to get back a flipper
#length essentially an x value so this is a qnorm problem

qnorm(.90, 192.2, 7.1)

#Problem3.
flippers <- rnorm(500, 192.2, 7.1)
library(tidyverse)
qplot(flippers, col = I("black"))
--------------------------------------------------------------------------------------------