getwd()



data <- read.csv("data/vgsales.csv")
str(data)
View(data)
sales <- data$Global_Sales

mean(sales)
median(sales)
range(sales)

var(sales)
sd(sales)
IQR(sales)


outliers <- sales[abs(sales - mean(sales)) > 3*sd(sales)]
sales_no_outliers <- sales[!sales %in% outliers]

mean(sales_no_outliers)
median(sales_no_outliers)
