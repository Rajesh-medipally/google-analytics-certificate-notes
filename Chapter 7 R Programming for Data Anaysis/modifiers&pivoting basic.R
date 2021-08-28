id <- c(1:10)

name <- c("John Mendes", "Rob Stewart", "Rachel Abrahamson", "Christy Hickman", "Johnson Harper", "Candace Miller", "Carlson Landy", "Pansy Jordan", "Darius Berry", "Claudia Garcia")

job_title <- c("Professional", "Programmer", "Management", "Clerical", "Developer", "Programmer", "Management", "Clerical", "Developer", "Programmer")

employee <- data.frame(id, name, job_title)
#separating names
employee %>% 
  separate(name,into=c("first name","last name"),sep=" ")
# mutate function is used to make the alters with algorithms to the columns to make new column
#mutate dont replce the original column it adds the data as new column at the end
View(penguins)
penguins %>% 
mutate(body_mass_kg = body_mass_g/1000)
## pivoting the tables
#making wider
 employee_wide =employee %>% 
  pivot_wider(names_from = name, values_from = job_title )
# making longer
employee_long = employee_wide %>% 
 pivot_longer(!id, names_to = "names",values_to = "Occupation")
## after the above line execution there will be lot of null values because of changing into wide
colnames(employee_long)
# so deleting the extra null values and selecting the exact coumn names needed to make the table
employee_long %>% 
  select(names,Occupation) %>% 
  na.omit() 
  
