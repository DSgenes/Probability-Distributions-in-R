
###Poisson Distribution###
#    A Poisson distribution is a discrete probability distribution. It gives the probability of an 
# event happening a certain number of times (k) within a given interval of time or space. The Poisson 
# distribution has only one parameter, λ (lambda), which is the mean number of events.

#There are four basic functions in R for calculating in the Poisson Distribution.

#rpois(n,lambda) generates n random values from the Poisson distribution with mean lambda.

#dpois(x,lambda) returns the probability of exactly x occurrences in a single interval.As usual in 
#R, x can be a vector.

#ppois(x,lambda) returns the probability of at most x occurrences in a single interval.In other 
#words, it's the cumulative distribution function.

#qpois(p,lambda) returns the smallest integer x such that ppois(x,lambda) ≥ p.That is, it computes 
#quantiles in the specified Poisson distribution.
----------------------------------------------------------------------------------------------------
#Example1.Calls to a customer-service line come at an average rate of 6 every 5 minutes.

#1.What is the probability that there are exactly 4 calls in a 5-minute period?That there are 
#atleast 4?
  
#2.Construct a probability histogram for the number of calls to the line in a given 5-minute period.

#3.Simulate the number of calls in 50 such periods.
  
#Problem1.
#the first thing we want is the probability of getting exactly four successes in a distribution
#with lambda equals 6
dpois(4,6)

#next we wanna know atleast 4 successes which means at most three successes in this distribution
1-ppois(3,6)

#Problem2.
#so in order to just show a graph with a finite x-axis i'm going to only consider values of x between
#0 and i don't know let's say 15 i think that'll give us a good upper limit for our x values 

x <- 0:15

#next get the probabilities for each of those x valuesin that same poisson distribution with parameter
#lambda equals 6.
probs <- dpois(x, 6)
probs

#lets get a probability histogram
#we'll put the x values on x-axis we'll weight them each by their probabilities
#you can definitely notice the right skew that's also characteristic of a poisson distribution

library(tidyverse)
qplot(x, weight = probs, geom = "histogram", bins = 16, col = I("black"))

#Problem3.
#let's simulate the number of calls to this line in 50 such periods so we're going to want to generate
#random values in the poisson distribution with parameter lambda equals 6

rpois(50,6)
---------------------------------------------------------------------------------------------------
#Example2. Around dinnertime, calls to a pizza shop come at an average rate of 1 every 5 minutes.
#1.What is the probability there will be exactly 4 calls between 6:40 and 7:00pm? That there will be less
#than 4? More than 4?

#Problem1.
#first of all we need to find the parameter lambda the average number of calls in the interval of
#time in question in this case from 6:40 to 7:00pm 20 minutes now we know they come in at an average
#rate of 1 every 5 minutes so the average that we'll expect in a 20 minute period is going to be 
#lambda equals 4.
dpois(4,4)  

#P(X < 4)- probabilities for calls less than 4 still keeping lambda equals 4
#the probability that x is less than 4 is going to be the sum of the probabilities for x equals
#0,1,2,3.
x <- 0:3
probs <- dpois(x,4)
sum(probs)

#P(x > 4) = 1 - P(x ≤ 4)   
1 - ppois(4, 4)
-----------------------------------------------------------------------------------------------------
#Example3.
#1.A bookstore keeps 5 copies of a popular cookbook in stock.Suppose the number of sales in a day 
#follow a Poisson distribution with mean 4.What is the probability that the store can't meet demand
#on a given day?

#2.How many copies should they keep in stock so that the probability of turning a customer away is 
#below 10%?
  
#Problem1.
#in other words what's the probability that the number of sales in a day is greater than 5 again we'll
#do this with a complement that x is less than or equal to 5 that they sell no more than 5 cookbooks
#P(x > 5) = 1 - P(x ≤  5)

1- ppois(5, 4)

#Problem2.
#we need to find a value such that P(X > x) < .10, or equivalently, such that P(X ≤ x) ≥ .90.
#when lambda equals 4 we have the following probabilities
x <- 0:8
probs1 <- dpois(x,4)

#the probability of selling at most 7 copies is about 95%.If the store keeps 7 copies in stock,the
#probability of turning a customer away is well under 10%.
qpois(.9,4)
---------------------------------------------------------------------------------------------------
#Example3.
#A machine producing cardboard boxes averages 2 flawed boxes per hour.

#1.What are the expected value and sd of the number of flawed boxes produced in an 8 hour shift?

#2.What is the probability the machine produces between 12 and 20 flawed boxes in an 8 hour shift?
  
#Problem1.
#we know average number of flawed boxes per hour we've 8 hours here so we're going to do 2 times 8
#to get 16.
#  μ = λ = 8*2 = 16
#  𝜎= λ = 16

8*2

#Problem2.
#so here to do between 13 and 19 inclusive between 12 and 20 exclusive so i want to sum up from
#13 to 19.
x <- 13:19
probs2 <- dpois(x , 16)
sum(probs2)
----------------------------------------------------------------------------------------------------
