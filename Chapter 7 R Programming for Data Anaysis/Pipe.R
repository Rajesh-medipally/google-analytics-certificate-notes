data("ToothGrowth")
View(ToothGrowth)
install.packages("dplyr")
library(dplyr)
filtered_tg <- filter(ToothGrowth,dose==0.5)
View(filtered_tg)
arrange(filtered_tg,len)

## the same above process done using nested function like

arrange(filter(ToothGrowth,dose == 0.5),len)

## by using pipes same process

filtered_toothgrowth <- ToothGrowth %>% 
  filter(dose ==0.5) %>% 
  arrange(len)
## the pipe operator basically means it sends the resulted object of the statement to the next line. (its like  inner method calling in java, of course it has to support the return type )
## more code including
ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  arrange(len)

## using summarise function with all the coding included
ToothGrowth %>% 
  filter(dose == 0.5) %>% 
  group_by(supp) %>% 
  summarise(mean_len = mean(len,na.rm=T), .group="drop")

## finding average len of tooth with dose 2.0 for each supplements

ToothGrowth %>% 
      filter(dose == 2.0) %>% 
      group_by(supp) %>% 
      summarise(mean_len=mean(len,na.rm=T), .group = "dropeed")

