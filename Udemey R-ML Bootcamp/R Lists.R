v <- c(1,2,3)
m <- matrix(1:10,nrow=2)
df <- mtcars
class(v)
class(df)
my.list <- list(v, m, df)
my.list

my.named.list <- list(sample.vec = v, my.matrix = m, sample.df = df)
my.named.list$sample.vec ##refer to a named element in the list

my.list[1]
my.named.list[1]
my.named.list['sample.vec']
class(my.named.list['sample.vec'])

my.named.list$sample.vec #returns the actual vector
my.named.list[['sample.vec']] #same as above
double.list <- c(my.named.list,my.named.list)
double.list
str(my.named.list)
