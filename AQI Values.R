#Air quality in Allegheny county
library(sf)
library(ggplot2)
library (readr)
library(dplyr)
data <- data.frame(read.csv(file.choose())) ## Open AQI file

#arrange (data, desc(index_value))

arrange (data, desc(site))

grp <- c("site")

data %>%
  group_by(across(grp)) %>%
  summarize(mean_index = mean(index_value)) ## Mean AQI values according to sites in the document

mean_index = c(21.4, 8.54, 9.95, 17.1, 24.3, 38.1, 3.11, 18.7, 32.2, 35.1, 18.0, 22.2, 28.3, 20.5, 6.34)
areas = c("Avalon", "Clairton", "Flag Plaza", "Glassport High Street", "Harrison Township", "Lawrenceville", "Lawrencevill 2", "Liberty", "Liberty2", "Lincoln", "North Braddock", "Parkway East", "Pittsburgh", "South Fayette", "West Mifflin") mean_index = c(21.4, 8.54, 9.95, 17.1, 24.3, 38.1, 3.11, 18.7, 32.2, 35.1, 18.0, 22.2, 28.3, 20.5, 6.34)

average_aqi = data.frame(areas, mean_index)
databar = average_aqi$mean_index
names(databar) = average_aqi$areas
databar

mean_plot = barplot(databar, las=2, cex.names=.5) #Turning the area names around since there are 15 neighborhoods to fit
mean_plot ##checking to see what initial bar graph looks like

mean_plot = barplot(databar, las=2, cex.names=.5, ylab ="Mean AQI Value") #Adding label to x-axis
mean_plot
