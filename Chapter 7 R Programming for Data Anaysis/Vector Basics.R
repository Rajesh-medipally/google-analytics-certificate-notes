# R is a programming language used for better  data visualization.
# say hello
print("Hello There")
[1] "Hello There"
# Variable declaration 
> x <- 15
> y <- "Hello"
> z <- TRUE
> a <- 12.5
# Vector is a collection of similar type of elements
vec <- c("hi","there","this ","is","peter","griffen")
> vec
[1] "hi"      "there"   "this "   "is"      "peter"   "griffen"
>  # vector has 2 properties
> # typeof and length()
> typeof(vec)
[1] "character"
> length(vec)
[1] 6
> # also vector have couple of data type guessing functions
  > is.character(vec)
[1] TRUE
> is.integer(vec)
[1] FALSE
> is.logical(vec)
[1] FALSE
