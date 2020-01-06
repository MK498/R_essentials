x = c(12, 4, 21, 17, 13)
barplot(x, col = rainbow(5))
#similar to excel conditional formatting (bar plot)
x2 <-  sample(1:50, 8, replace=TRUE)
x22 <- sort(x2, dec = TRUE)
x22norm <- (x22-min(x22))/(max(x22)-min(x22))
pal <- colorRamp(c("yellow", "red"))
barplot(x22, col = rgb(pal(x22norm), max = 255))

#similar to excel conditional formatting (scatter plot)
x5 <- sort(sample(1:100, 50, replace=FALSE), decreasing = FALSE)
y5 <- sort(sample(1:100, 50, replace=FALSE), decreasing = FALSE)
z5 <- abs(x5 - y5)
z5norm <- (z5-min(z5))/(max(z5)-min(z5))
pal <- colorRamp(c("yellow", "blue"))
plot(x5,y5, pch = 20, col = rgb(pal(z5norm), alpha = 100, max = 255))

#plot, color based on attribute z
set.seed(100)
z <- sample(1:4, 50, TRUE)
x <- rnorm(100)
y <- rnorm(100)
plot(x5,y5, pch = 20, col = rainbow(4)[z])

x3 <- runif(11, 0, 1)
pal <- colorRamp(c("green", "blue"))
barplot(x3, col = rgb(pal(x3), max = 255))


#colorbrewer
require("RColorBrewer")
x = c(12, 4, 21, 17, 13)
barplot(x, col = brewer.pal(5, "Set1"))
#
display.brewer.all()
#
display.brewer.pal(9,"YlGnBu")
x2 <-  sample(1:50, 7, replace=FALSE)
x22 <- sort(x2, dec = TRUE)
cols <- brewer.pal(9,"YlGnBu")
pal <- colorRampPalette(cols)
barplot(x22, col = pal(7))

x3 <- sort(runif(9, -1, 1), decreasing=FALSE)
cols <- brewer.pal(9,"RdYlGn")
pal <- colorRampPalette(cols)
barplot(x3, col = pal(9))

