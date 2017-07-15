df <- mtcars
head(df)


# &, |, !

df[df$mpg > 20,]

df[(df$mpg > 20) & (df$hp > 100),]

#if, else, and else if
library(stringr)
x <- 12
if (x == 10) {
	print('x is equal to 10!')
} else if (x == 12) {
	print('x is equal to 12!')
} else {
	print(stringr::str_interp('x is equal to ${x}'))
}

# Ex. 1
x <- 2

if (x %% 2 == 0) {
	print('x is even')
} else {
	print('x is odd')
}

#Ex. 2
x <- matrix()

if (is.matrix(x)) {
	print('x is a matrix')
} else {
	print('x is not a matrix')
}

#Ex. 3 - Past used for concat
x <- c(3, 7, 1)

if (x[1] > x[2]) {
	# first and second place
	fir <- x[1]
	sec <- x[2]
} else {
	fir <- x[2]
	sec <- x[1]
}

if (x[3] > fir & x[3] > sec) {
	#3rd was largest
	thi <- sec
	sec <- fir
	fir <- x[3]
} else if (x[3] < fir & x[3] < sec) {
	#3rd was smallest
	thi <- x[3]
} else {
	thi <- sec
	sec <- x[3]
}

print(paste(fir, sec, thi))

#Ex. 4
x <- c(20, 100, 1)

if (x[1] > x[2] & x[1] > x[3]) {
	print(x[1])
} else if (x[2] > x[3]) {
	print(x[2])
} else {
	print(x[3])
}

x <- 0

while (x < 10) {
	print(paste0('x is: ', x))

	x <- x + 1

	if (x == 10) {
		print("x is now equal to 10! Break Lookup")
	}
}

v <- c(1, 2, 3, 4, 5)

for (i in v) {
	print(i)
}

my.list <- list(c(1, 2, 3), mtcars, 12)

for (item in my.list) {
	print(item)
}


mat <- matrix(1:25, nrows = 5)
