###Central Limit Theorem###
#   The central limit theorem says that the sampling distribution of the mean will always be
#  normally distributed, as long as the sample size is large enough. Regardless of whether 
#  the population has a normal, Poisson, binomial, or any other distribution, the sampling 
#  distribution of the mean will be normal.

#Example1.
#An unknown distribution has a mean of 90 and a standard deviation of 15. Samples of size  
#n = 25 are drawn randomly from the population.

#a.Find the probability that the sample mean is between 85 and 92.

pnorm(92, 90,  15/sqrt(25)) - pnorm(85, 90,  15/sqrt(25))

#b.Find the value that is two standard deviations above the expected value, 90, of the sample
#  mean.
#  Xbar ~ N (μx, σX/sqrtn)

#  Xbar ~ N (μx + (# of STDEVs)(σx√n))
90 + 2 * 15/sqrt(25)

#standard error of the mean formula
# SE = sigma / sqrt (n)

15/sqrt(25)

#Example2.
#An unknown distribution has a mean of 45 and a standard deviation of eight.Samples of size
#n = 30 are drawn randomly from the population. Find the probability that the sample mean
#is between 42 and 50.

# P(42 < xbar < 50) = pnorm(b, μ, σ/sqrt(n)) - pnorm(a, μ, σ/sqrt(n))
pnorm(50, 45, 8/sqrt(30)) - pnorm(42, 45, 8/sqrt(30))

#Example3.
#The length of time, in hours, it takes an "over 40" group of people to play one soccer 
#match is normally distributed with a mean of two hours and a standard deviation of 0.5 
#hours. A sample of size  n=50 is drawn randomly from the population.Find the probability
#that the sample mean is between 1.8 hours and 2.3 hours.

##P(1.8< xbar < 2.3) = pnorm(b, μ, σ/sqrt(n)) - pnorm(a, μ, σ/sqrt(n))

pnorm(2.3, 2, 0.5/sqrt(50)) - pnorm(1.8, 2, 0.5/sqrt(50))

#Example4.
#The length of time taken on the SAT for a group of students is normally distributed with
#a mean of 2.5 hours and a standard deviation of 0.25 hours.A sample size of n = 60 is 
#drawn randomly from the population. Find the probability that the sample mean is between
#two hours and three hours.

#P(2 < xbar < 3) = pnorm(b, μ, σ/sqrt(n)) - pnorm(a, μ, σ/sqrt(n))

pnorm(3, 2.5, 0.25/sqrt(60)) - pnorm(2, 2.5, 0.25/sqrt(60))

#Example5.
#In a recent study reported Oct. 29, 2012 on the Flurry Blog, the mean age of tablet users
#is 34 years. Suppose the standard deviation is 15 years. Take a sample of size  n=100

#a.What are the mean and standard deviation for the sample mean ages of tablet users?

#Since the sample mean tends to target the population mean, we have  μx=μ=34
#The sample standard deviation is given by:  

#  σX = σ/sqrt(n)
  
15/sqrt(100)
  
#b.What does the distribution look like?

set.seed(0)

#create random variable with sample size of 100 that is normally distributed 

x <- rnorm(n=100, 34, 15)
hist(x, col='steelblue', main = "Histogram of tablet users")

#c.Find the probability that the sample mean age is more than 30 years (the reported mean
#age of tablet users in this particular study).
  
# P(X > 30) = 1 - pnorm(a, μ, σ/sqrt(n))

1 - pnorm(30, 34, 15/sqrt(100))

#d.Find the 95th percentile for the sample mean age (to one decimal place).

qnorm(0.95, 34, 15/sqrt(100))

#Example6.
#In an article on Flurry Blog, a gaming marketing gap for men between the ages of 30 and 
#40 is identified. You are researching a startup game targeted at the 35-year-old demographic.
#Your idea is to develop a strategy game that can be played by men from their late 20s 
#through their late 30s. Based on the article’s data, industry research shows that the 
#average strategy player is 28 years old with a standard deviation of 4.8 years.You take 
#a sample of 100 randomly selected gamers. If your target market is 29- to 35-year-olds, 
#should you continue with your development strategy?

#P(29 < x bar < 35) 

#You need to determine the probability for men whose mean age is between 29 and 35 years
#of age wanting to play a strategy game:

pnorm(35, 28, 4.8/sqrt(100)) - pnorm(29, 28, 4.8/sqrt(100))

#You can conclude there is approximately a 1.9% chance that your game will be played by
#men whose mean age is between 29 and 35.

#Example7.
#The mean number of minutes for app engagement by a tablet user is 8.2 minutes.Suppose 
#the standard deviation is one minute. Take a sample of 60.

#a.What are the mean and standard deviation for the sample mean number of app engagement
#  by a tablet user?
  
μ = μ = 8.2

#σ = σ/sqrt(n)

1/sqrt(60)
  
#b.What is the standard error of the mean?

# Formula : SE = sigma / sqrt (n)
#This allows us to calculate the probability of sample means of a particular distance 
#from the mean, in repeated samples of size 60.

1/sqrt(60)

#c.Find the 90th percentile for the sample mean time for app engagement for a tablet 
#  user.Interpret this value in a complete sentence.

qnorm(0.90, 8.2, 1/sqrt(60))
  
#d.Find the probability that the sample mean is between eight minutes and 8.5 minutes.

#P(8 < x bar < 8.5)

pnorm(8.5, 8.2, 1/sqrt(60)) - pnorm(8, 8.2, 1/sqrt(60))

#Example8.
#Cans of a cola beverage claim to contain 16 ounces. The amounts in a sample are measured
#and the statistics are  n=34,  x¯=16.01 ounces. If the cans are filled so that  μ=16.00
#ounces (as labeled) and  σ=0.143 ounces, find the probability that a sample of 34 cans 
#will have an average amount greater than 16.01 ounces. Do the results suggest that cans 
#are filled with an amount greater than 16 ounces?

#P(x bar > 16.01)

1 - pnorm(16.01 , 16.00, 0.143/sqrt(34))
----------------------------------------------------------------------------------------

  

  
  .



