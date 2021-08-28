install.packages("ggplot2")
install.packages("palmerpenguins")
library(ggplot2)
library(palmerpenguins)
View(penguins)
colnames(penguins)

## now trying to create a graph on body mass and flipper length.
##generally graph contains several partitions to inlcude. 
#like#
# plot,geographic,aesthetic, annotations and labels
ggplot(data= penguins) + geom_point(mapping = aes(x=flipper_length_mm , y= body_mass_g))
## here in the above line,
## ggplot derives that specific data set is going to be used for plotting
## geom basically for choosing what kind of graph is needed. here geom_point means point (scatter plot) graph, if bar graph wanted geom_bar, like that there are many
### options of plots in geom.
## to define the aesthetics of the plots, geom takes a mapping argument which contains the aesthetic function to provide x and y of the graph.
## Note : mapping can also be written in ggplot function.
ggplot(data= penguins, mapping = aes(x=flipper_length_mm , y= body_mass_g)) + geom_point()




## an example 

hotel_df = read.csv("C:\\Users\\mraje\\Documents\\GitHub\\google-analytics-certificate-notes\\practice\\hotel booking\\hotel_bookings.csv")
colnames(hotel_df)
# lets try to plot is there any relation in hotel and children
ggplot(hotel_df) + 
  geom_point(mapping = aes(x=hotel,y=children))
## with this we can see the relation.

ggplot(data = hotel_df) +
  geom_point(mapping = aes(x = lead_time, y = children))



## lets try some other geoms
## the same penguines data and variables are used but with smooth, which gives a smooth line graph.
ggplot(penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g))
## lets plot a combined plot of scatter and smooth line.  
ggplot(data=penguins) +
  geom_smooth(mapping = aes(x=flipper_length_mm,y=body_mass_g)) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g)) 
  
## lets try jitter plots.jittering actually makes to understand the graph easily, by replacing the overlapping points in the data with some jitters. 
## it helps avoiding overplottiing bulky graphs.
ggplot(data=penguins)+
  geom_jitter(mapping = aes(x=flipper_length_mm,y=body_mass_g))
## lets try bar graph
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut,fill=cut,color=cut)) ## here no need to give y axis because cut comes with count and its a comparison graph for it self.
## here fill is used to fill the color in blocks according to the different cut points.
## in bar graph if we use color attribute to mention color it colors the outline of the each bar graphs,
## in below code i used different elements for color and fill 
ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=cut,fill=clarity,color=cut)) ## here no need to give y axis because cut comes with count and its a comparison graph for it self.


## facet function usage
# facet is used to show th individual graphs for each variable
# facet has 2 functions, facet_wrap and facet_grid.
# to visualize on the base of single variable use facet_wrap for multiple data points facet_grid.
ggplot(data = penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_wrap(~species)

ggplot(data=diamonds) +
  geom_bar(mapping = aes(x=color,fill=cut)) +
  facet_wrap(~cut)

## facet_grid will spilts the plots vertically

ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  facet_grid(sex~species)



##another example
head(hotel_df)
colnames(hotel_df)

ggplot(data=hotel_df)+
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type))+
  facet_wrap(~deposit_type) +
  theme(axis.text.x = element_text(angle = 45))

ggplot(data=hotel_df)+
  geom_bar(mapping = aes(x=distribution_channel,fill=deposit_type))+
  facet_wrap(~deposit_type~market_segment)+
theme(axis.text.x = element_text(angle = 45))

## giving title to the graph
## we can save the graph in a variable also
graph1 <- ggplot(data=penguins) +
  geom_point(mapping = aes(x=flipper_length_mm,y=body_mass_g,color=species)) +
  labs(title = "Palmer Penguines: body vs mass vs sex this is title",subtitle = "this is subtitle",caption = " here i can explain about some data about data collection, when , who, why , what et...") 

  
graph1 +annotate("text",x=200,y=5250,label="this is label inside the graph", color="purple",fontface="bold", size=4.5,angle=45)





