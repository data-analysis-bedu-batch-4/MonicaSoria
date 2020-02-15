# INSTALL GGPLOT2 ----
install.packages("ggplot2")
library(ggplot2)

# IRIS DATASET ----
data()
data(iris)
head(iris)
summary(iris)

# PLOT IRIS ----
plot(iris)
plot(iris$Petal.Length, iris$Sepal.Width)

# GGPLOT IRIS ----
ggplot(iris, aes(x = Petal.Length, y = Sepal.Width)) +
  geom_point()

?geom_point

ggplot(iris, aes(x = Petal.Length, y = Sepal.Width, col = Species)) +
  geom_point()

ggplot(iris, aes(x = Petal.Length, y = Sepal.Width, col = Species, size = Petal.Width)) +
  geom_point()

ggplot(iris, aes(x = Petal.Length, y = Sepal.Width, col = Species, 
                 size = Petal.Width, shape = Species)) +
  geom_point()

ggplot(iris, aes(x = Petal.Length, y = Sepal.Width, col = Species, 
                 size = Petal.Width, shape = Species, alpha = Sepal.Length)) +
  geom_point()

# BAR AND BOXPLOT ----
ggplot(iris, aes(Species, Sepal.Length)) +
  geom_bar(stat = "summary", fun.y = "mean")

ggplot(iris, aes(Species, Sepal.Length, fill = Species)) +
  geom_bar(stat = "summary", fun.y = "mean")

ggplot(iris, aes(Species, Sepal.Length)) +
  geom_bar(stat = "summary", fun.y = "mean", fill = "blue")

ggplot(iris, aes(Species, Sepal.Length)) +
  geom_bar(stat = "summary", fun.y = "mean", fill = "#ff0080", col = "black") +
  geom_point()

myPlot <- ggplot(iris, aes(Species, Sepal.Length)) +
  geom_bar(stat = "summary", fun.y = "mean", fill = "#ff0080", col = "black") +
  geom_point(position = position_jitter(0.2), size = 3, shape = 21)

myPlot + theme(panel.grid = element_blank(),
               panel.background = element_rect(fill = "white"),
               panel.border = element_rect(colour = "black", fill = NA, size = 0.2))

?theme

myPlot 
myPlot + theme_bw()
myPlot + theme_classic()
myPlot + theme_dark()
myPlot + theme_gray()
myPlot + theme_light()
myPlot + theme_linedraw() + theme(panel.background = element_rect(fill = "blue"))
myPlot + theme_minimal()
myPlot + theme_void()
myPlot + theme_hefin

ggplot(iris, aes(Species, Sepal.Length)) +
  geom_point() +
  geom_boxplot(fill = "#ff0080", col = "black", notch = TRUE)
  
# FINISHING TOUCHES ----
myPlot + 
  theme_hefin +
  labs(x = "", y = "Sepal length (mm)") +
  ggtitle("Sepal length by iris species") +
  theme(plot.title = element_text(hjust = 0.5))

# SAVING OUR PLOT ----
setwd("~/Documents")
ggsave("Graph 1.pdf", width = 8, height = 5)

# FACTORIAL ----
data(ToothGrowth)
head(ToothGrowth)
summary(ToothGrowth)

ggplot(ToothGrowth, aes(supp, len, fill = as.factor(dose))) +
  geom_bar(stat = "summary", fun.y = "median", col = "black", position = "dodge") +
  geom_point(position = position_dodge(0.9))

ggplot(ToothGrowth, aes(as.factor(dose), len, group = supp, col = supp)) +
  geom_line(stat = "summary", fun.y = "mean") +
  geom_smooth(method = "lm")
