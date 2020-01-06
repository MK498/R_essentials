xskew <- read.csv("~/Learning/R_essentials/Ch04/04_05_Challenge/xskew.csv", header = TRUE)
x.skew <- xskew$x
boxplot(x.skew, horizontal = TRUE)
hist(x.skew)
summary(x.skew)
x.sqrt <- sqrt(x.skew)
boxplot(x.sqrt, horizontal = TRUE)
hist(x.sqrt)
boxplot(log(scale(x.skew)), horizontal = TRUE)
boxplot.stats(x.skew)
x.trimmed <- x.skew[x.skew > 5]
boxplot.stats(x.trimmed)
boxplot(x.trimmed, horizontal = TRUE)
hist(x.trimmed)
fivenum(x.skew)

x.shift <-  x.skew + 10
boxplot.stats(x.shift)
boxplot(x.skew)
boxplot(x.shift)

x2 <- x.skew
9^(1/2)



require("datasets")
i <- islands[,2]
data(islands)
boxplot(islands, horizontal = TRUE, main = "orig")
boxplot(log10(islands), horizontal = TRUE, main="log10")
boxplot(islands^(1/2), horizontal = TRUE, main="power 1/2")
boxplot(islands^(1/4), horizontal = TRUE, main="power 1/4")
boxplot(islands^(1/6), horizontal = TRUE, main="power 1/6")
boxplot(islands^(1/10), horizontal = TRUE, main="power 1/10")
boxplot(islands^(1/40), horizontal = TRUE, main="power 1/40")
boxplot(islands^(1/100), horizontal = TRUE, main="power 1/100")
boxplot(islands^(1/1000), horizontal = TRUE, main="power 1/1000")
boxplot(log10(islands), horizontal = TRUE, main="log10")

hist(islands, main="orig") 
hist(islands^(1/2), main="power 1/2") 
hist(islands^(1/10), main="power 1/10") 
hist(islands^(1/100), main="power 1/100") 
hist(islands^(1/1000), main="power 1/1000") 
hist(log10(islands), main="log10") 


boxplot(x.skew, horizontal = 1)
x.trans = 1+max(x.skew)-x.skew
boxplot(x.trans, horizontal = 1)

boxplot(log10(x.trans), horizontal = 1)
plot(x.skew, log10(x.trans))
