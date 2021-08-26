
# here data frame is nothing but a table each vector represents its corresponding column
> # Data Frame Creation
> data.frame(x = c(1,2,3),y = c(1.5,8,5.5))
x   y
1 1 1.5
2 2 8.0
3 3 5.5
> # we can create files and directories and copy paste them.
  > # create directory
  > dir.create("destination_folder")
> # create file
  > # we can create files and directories and copy paste them.
  > # create directory
  > dir.create("destination_folder")
> # create file
> file.create("text.txt")
[1] TRUE
> file.create("word.docx")
[1] TRUE
> file.create("csv.csv")
[1] TRUE
> #copy the file to destination folder
> file.copy("text.txt","destination_folder")
[1] TRUE
# delete by unlikn function
> unlink("word.docx")
> # creating matrix
> #for the matrix of 2*3 specify nrow as 2 
> matrix(c(3:8),nrow = 2)
[,1] [,2] [,3]
[1,]    3    5    7
[2,]    4    6    8

> #for column change n col
> matrix(c(3:8),ncol = 2)
[,1] [,2]
[1,]    3    6
[2,]    4    7
[3,]    5    8
