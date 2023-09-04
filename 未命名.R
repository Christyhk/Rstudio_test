# do loops in R
# i.e. I would like to manually calculate factorial(1) + factorial(2) + … + factorial(100)  

# 1) for loop
res <- numeric(100) # set an empty vector with length of 100
for(i in 1:100){
  # in R 1:100 create a sequence from 1 to 100
  res[i] <- factorial(i)
}   
res1 <- sum(res) # function sum() means to sum up all the elements
res1

# 2) we can also do a control flow
i <- 1 # starting value is 1
res2 <- factorial(i)
while(i < 100){
  i <- i + 1 # so the loop will stop after i + 1 =100
  res2 <- res2 + factorial(i)
}
all.equal(res1, res2)
