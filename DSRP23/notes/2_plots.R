
install.packages(c("usethis","credentials"))

install.packages("ggplot2")
library(ggplot2)

str(mpg)




# X and Y Plots #### 
ggplot(data = mpg, aes(x=hwy, y=cty)) +
  geom_point() +
  labs(x = "highway mpg",
      y = "city mpg",
      title = "car city vs highway milage")








# Histogram ####
# We can set the number of bars with 'bins' 
str(iris)
ggplot(data = iris, aes(x=Sepal.Length)) +
  geom_histogram(bins = 50)
# We can set the size of bars with 'binwidth'
ggplot(data = iris, aes(x=Sepal.Length)) +
  geom_histogram(binwidth = 0.25)







# Distribution curve ####
ggplot(data = iris, aes(x=Sepal.Length)) + 
  geom_density()







# Box Plots ####
ggplot(data = iris, aes(x = Sepal.Length)) + 
  geom_boxplot()

ggplot(data = iris, aes(y = Sepal.Length)) +
  geom_boxplot()







# Violin Plot ####
ggplot(data = iris, aes(x = Species, y = Sepal.Length)) + 
  geom_violin(color = "violet", fill = "grey95") + 
  geom_boxplot(width = 0.2, fill = NA)

ggplot(data = iris, aes(x = Species, y = Sepal.Length, fill = Species)) + 
  geom_violin() + 
  geom_boxplot(width = 0.2, fill = "white")

ggplot(data = iris, aes(x = Species, y = Sepal.Length)) + 
  geom_violin(aes(fill= Species)) + 
  geom_boxplot(width = 0.2)







# Barplots #### 
ggplot(data = iris, aes(x=Species, y = Sepal.Length)) + 
  geom_bar(stat = "summary",
           fun = "mean")




# Scatter Plots ####
# Aes is aesthetics
ggplot(data = iris, aes(x = Species, y= Sepal.Length)) +
  geom_point()

ggplot(data = iris, aes(x = Species, y= Sepal.Length)) +
  geom_jitter(width = 0.25)



# Line Plot ####
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_line(stat = "summary", fun = "mean")

# Line of best fit
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point() +
  geom_smooth(se = F)





# Factors ####
mpg$year <- as.factor(mpg$year)
ggplot(data = iris, aes(x = Sepal.Length, y = Sepal.Width)) +
  geom_point(aes(color=Species)) +
  scale_color_manual(values = c("violet","lightpink", "red"))

iris$Species <- factor(iris$Species, level=c("versicolor, setosa, virginica"))
