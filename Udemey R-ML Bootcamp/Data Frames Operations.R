empty <- data.frame()
c1 <- 1:10
letters
c2 <- letters[1:10]
df <- data.frame(col.name.1 = c1, col.name.2 = c2)
#importing and exporting data
d2 <- read.csv('some_file.csv')
write.csv(df, file = './documents/r projects/r bootcamp/saved_df.csv')
df <- read.csv('./documents/r projects/r bootcamp/saved_df.csv')
#getting information about our data frame
nrow(df)
ncol(df)
colnames(df)
str(df)
summary(df)
#referencing cell off a data frame
df[[5,2]]
df[[2,'col.name.1']] <- 9999
df[1,]
mtcars
head(mtcars)
mtcars$mpg
mtcars[,'mpg']
mtcars[,1]
mtcars[['mpg']]
mtcars['mpg'] #returns a dataframe instead of a vector
head(mtcars[c('mpg','cyl')])
#Adding Rows
df2 <- data.frame(col.name.1 = 2000, col.name.2 = 'new')
dfnew <- rbind(df, df2)
# Adding columns
df$newcol <- 2*df$col.name.1
df$newcol.copy <- df$newcol
df[,'newcol.copy2'] <- df$newcol
#Setting column names
colnames(df)
colnames(df) <- c('1','2','3','4','5')
colnames(df)[1] <- 'New Col Name'
df[1:10,]
#Selecting multiple rows
head(df, 7)
df[-2,] #Negative signs say to ignore rows
mtcars[mtcars$mpg > 20,]
mtcars[mtcars$mpg > 20 & mtcars$cyl == 6,]
mtcars[mtcars$mpg > 20 & mtcars$cyl == 6,c('mpg','cyl','hp')]
subset(mtcars, mpg > 20 & cyl == 6, c('mpg','cyl','hp'))
# Selecting multiple columns
head(mtcars)
mtcars[,c(1,2,3)]
mtcars[,c('mpg','cyl','hp')]
# Dealing with missing data
is.na(mtcars)
any(is.na(df))
any(is.na(mtcars$mpg))
df[is.na(df)] <- 0
mtcars$mpg[is.na(mtcars$mpg)] <- mean(mtcars$mpg) #assign the mean value of mpg to missing columns
