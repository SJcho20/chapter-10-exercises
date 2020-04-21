# Exercise 1: data frames

# > score
#       m  f
# [1,] 10 21
# [2,] 40 60
# [3,] 60 70
# [4,] 20 30

# (1) Create the above 'score' dataframe.
m <- c(10, 40, 60, 20)
f <- c(21, 60, 70, 30)
score <- data.frame(m, f, stringsAsFactors = FALSE)
print(score)
head(score)

# (2) Switch the column's name each other (male <-> female)
new_col_names <- c("f", "m")
colnames(score) <- new_col_names
print(new_col_names)
print(score)
colnames(score)

# (3) Print all elements of 2 row.
score_m <- score$m
score_f <- score$f

score[2, ]

# (4) Print all elements of female column.
print(score_f)


# (5) Print 3 row and 2 column.
score[3,2]



# The following are that a 'ds' dataframe has been created with NA.

ds <- state.x77
ds[2,3] <- NA; ds[3,1] <- NA; ds[2,4] <- NA; ds[4,3] <- NA

# (6) How many NA are in the ds dataframe by rows? 

#4 NA in total (but 2 NA values in Alaska)
print(ds)
head(ds)

rowSums(is.na(ds))


# (7) Print the rows that include NA.
print(rowSums(is.na(ds))>0)

# (8) Print the number of rows with NA.
sum(rowSums(is.na(ds))>0)


# (9) Create a 'ds.new' dataframe withount including rows with NA.
z2 <- c(ds)
z3 <- as.vector(na.omit(z2))
print(z3)
ds.new <- z3
print(ds.new)
