#CSV Input and Outout
write.csv(mtcars,file = 'my_example.csv')
ex <- read.csv('my_example.csv')
head(ex)
