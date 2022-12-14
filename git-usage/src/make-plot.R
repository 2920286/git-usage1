getwd
setwd("~/Biology work Ox 3/GitHUb")
library(ggplot2)

sods_data <- read.csv("stackoverflow-git-data.csv")

g <- ggplot(
  data = sods_data,
  mapping = aes(x = year, y = percentage)) +
  geom_point() +
  geom_smooth(method = "lm") +
  geom_text(
    aes(x = 2020, y = 82.8, label = "only GitHub"),
    nudge_x = 0.2,
    nudge_y = -4) +
  labs(
    x = "Year",
    y = "Percentage who used git",
    title = "Git usage has increased",
    subtitle = "Data from Stackoverflow Developer Survey")

ggsave(filename = "git-usage.png",
       plot = g,
       height = 7.4,
       width = 10.5,
       units = "cm")

sink(file = "regression-summary.txt")
summary(lm(percentage ~ year, data = sods_data))
sink()

sods_data<-read.csv("C:\\Users\\ellie\\OneDrive\\Documents\\Biology work Ox 3\\data\\stackoverflow-git-data.csv"

ggsave(filename= "out/git-usage.png",
       plot=g,
       height=7.4,
       width=10.5,
       units='cm')  
sink(file= "out/regression- sumamry.txt")



