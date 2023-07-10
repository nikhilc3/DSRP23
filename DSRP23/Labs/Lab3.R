library(ggplot2)
getwd()
data <- read.csv("data/vgsales.csv")
data

# Distrtibution of one Variable( Histogram)
ggplot(data, aes(x = Global_Sales)) +
  geom_histogram(color = "black", fill = "lightblue", bins = 50) +
  labs(x = "Global Sales (in millions)", y = "Frequency", title = "Distribution of Global Sales") 




# A numeric vs Categorical Variable (boxplot)
ggplot(data, aes(x = Genre, y = Global_Sales)) +
  geom_boxplot() +
  labs(x = "Genre", y = "Global Sales (in millions)", title = "Global Sales by Genre")



# Numeric vs Numeric
ggplot(data, aes(x = NA_Sales, y = Global_Sales, color = Genre)) + 
  geom_point() +
  labs(x="North American Sales(in millions)", y = "Global Sales (in millions)", title = "Global vs North American Sales (In Millions)")
