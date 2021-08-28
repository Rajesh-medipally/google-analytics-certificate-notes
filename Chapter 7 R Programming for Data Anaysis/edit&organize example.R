library(tidyverse)
library(dplyr)

data(package = "palmerpenguins")
head(penguins)
head(penguins_raw)

# ascending order
penguins %>% 
  arrange(bill_length_mm)
# descending order
penguins %>% 
  arrange(-bill_length_mm)
# the above data is in console only to save the data needed to assign a variable
penguins_desc <- penguins %>% arrange(- bill_length_mm)
View(penguins_desc)

## finding the mean bill length according to island
# consider dateset
penguins_desc %>% 
# group them by island  
  group_by(island) %>%
# deleting the rows of na
  drop_na() %>% 
# summarize the data
  summarise(mean_bill_length = mean(bill_length_mm))

## finding max bill length on each island
penguins_desc %>% 
  group_by(island) %>% 
  drop_na() %>% 
  summarise(max_bill_length = max(bill_length_mm))
  
## finding max  and mean with species and island
penguins %>% 
  group_by(species,island) %>% 
  drop_na() %>% 
  summarise(max_len = max(bill_length_mm),mean_len = mean(bill_length_mm))

## count of penguins on each island with soecies type
penguins %>% 
  #group_by(species,island) %>% 
  drop_na() %>% 
  #summarise(total = count(species))
  count(species,island)
## using filter
penguins %>% 
  filter(species == "Adelie")



## some more practice on cleaning and organizing the data

install.packages("skimr")
install.packages("janitor")
library("skimr")
library("janitor")
hotel_df <- read_csv("C:\\Users\\mraje\\Documents\\GitHub\\google-analytics-certificate-notes\\practice\\hotel booking\\hotel_bookings.csv")
colnames(hotel_df)
spec(hotel_df)
head(hotel_df)
str(hotel_df)
## skim is very useful function to understand data
skim_without_charts(hotel_df)
## lets consider hotel , is canceled and lead time and make another data frame
hotel_cancel_time_df <-hotel_df %>% 
   select(hotel,is_canceled,lead_time) 
## renaming the column names
colnames(hotel_cancel_time_df)
hotel_cancel_time_df %>% 
  rename("new_hotel" = "hotel","cancelled"= "is_canceled","advanceBookingTime"="lead_time" )
# combining two coloumns
head(hotel_df)
# in this dataset we can combine arrival date, month, year to make new column
date_table <-hotel_df %>% 
  select(arrival_date_year,arrival_date_month,arrival_date_day_of_month) %>% 
  unite(arrival_date, c(arrival_date_day_of_month,arrival_date_month,arrival_date_year), sep="/")
head(date_table)
## counting by year and month
hotel_df %>% 
  count(arrival_date_month,arrival_date_year)
hotel_df %>% 
  count(is_canceled)


