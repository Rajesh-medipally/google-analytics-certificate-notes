#The `tidyverse` package is actually a collection individual `packages` that can help you perform a wide variety of analysis tasks.
install.packages("tidyverse")
library("tidyverse")
##as we loaded tidyverse library, there are several sample dabases to practice , one of them  is diamends in ggplot2 package. to see the columns
## and several rows using head function is better
head(diamonds)


## a script generally doesnt include the result, am pasting them from the console for better understanding.



#/out
# A tibble: 6 x 10
carat cut       color clarity depth table price     x     y     z
<dbl> <ord>     <ord> <ord>   <dbl> <dbl> <int> <dbl> <dbl> <dbl>
1  0.23 Ideal     E     SI2      61.5    55   326  3.95  3.98  2.43
2  0.21 Premium   E     SI1      59.8    61   326  3.89  3.84  2.31
3  0.23 Good      E     VS1      56.9    65   327  4.05  4.07  2.31
4  0.29 Premium   I     VS2      62.4    58   334  4.2   4.23  2.63
5  0.31 Good      J     SI2      63.3    58   335  4.34  4.35  2.75
6  0.24 Very Good J     VVS2     62.8    57   336  3.94  3.96  2.48
#//out

## the str and glimpse will show the summary of the table with column names, glimpse shows with some extra data
str(diamonds)
glimpse(diamonds)
## colnames function returns the column names 
colnames(diamonds)
#### process data cleaning.
# to rename a column name 
rename(diamonds, carat_new = carat)
## multiple rename
rename(diamonds,carat_new = carat, cut_new =cut)#
#summarize function results in summarizing the value with witch way wanted, like trying to get mean of carat
summarise(diamonds,mean_carat=mean(carat))

#### visualizing tools#
# most of plots are been done by ggplot package,witch is in tidyverse package.
# a sample code
ggplot(data = diamonds, aes(x = carat, y = price)) +
  geom_point()
## changing color in the code on the column base
ggplot(data = diamonds, aes(x = carat, y = price,color=cut)) +
  geom_point()
## to create seperate visuals on the column base
ggplot(data = diamonds, aes(x = carat, y = price,color=cut)) +
  geom_point() + facet_wrap(~ cut)



