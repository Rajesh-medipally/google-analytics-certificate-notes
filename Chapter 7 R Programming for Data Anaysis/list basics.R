# LIST is a collection of raw elements, just like any other list in programmings it contains multiple values.
> # list creation
  > list("a",1L,1.5,TRUE)
[[1]]
[1] "a"

[[2]]
[1] 1

[[3]]
[1] 1.5

[[4]]
[1] TRUE

> # here in R, if you want to declare an integer, we declare with L following.
> # can apply str to know what type of data is in the list
> str(list)
function (...)  
> str(list("a",1L,1.5,TRUE))
List of 4
$ : chr "a"
$ : int 1
$ : num 1.5
$ : logi TRUE  
> z <- list(list(list(1 , 3, 5)))
> str(z)
List of 1
$ :List of 1
..$ :List of 3
.. ..$ : num 1
.. ..$ : num 3
.. ..$ : num 5
> # Naming the List
  > list('Chicago' = 1, 'New York' = 2, 'Los Angeles' = 3)
$Chicago
[1] 1

$`New York`
[1] 2

$`Los Angeles`
[1] 3
