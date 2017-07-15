state.x77
USPersonalExpenditure
women
data()
WorldPhones
head(state.x77)
tail(state.x77)
str(state.x77)
summary(state.x77)
days <- c('Mon','Tue','Wed','Thu','Fri')
temp <- c(22.2,21,23,24.3,25)
rain <- c(T,T,F,F,T)
df <- data.frame(days,temp,rain)
str(df)
summary(df)

df[1,]
df[,1]
df[,'rain']
df[1:5, c('days','temp')] #subsection of the data frame w/ specific columns
df$days # $ format returns a vector
df$temp
df$rain
df['days'] # bracket column format returns a data frame
subset(df,subset = rain==T)
subset(df,subset = temp >= 23)
sorted.temp <- order(df['temp'])
df[sorted.temp,]
desc.temp <- order(-df['temp'])
df[desc.temp,]
