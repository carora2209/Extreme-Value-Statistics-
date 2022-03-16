load("Datasets/1_Wind.RData")
library(ggmap)

bbox <- c(-21.375,  40.875,  16.875,  61.125)

map <- get_map(location = bbox, source="stamen", maptype = "toner" , color="bw")

dataToPlot = data.frame(X = coordinates[, 1], Y = coordinates[, 2])
mapPoints <- ggmap(map) +
  geom_point(
    data = dataToPlot,
    aes(x = X, y = Y),
    color = "red",
    alpha = 1,
    size = 3,
    shape = 16,
  ) +
  labs(title = "", fill = "") +
  theme(plot.title = element_text(hjust = 0.5)) + theme(legend.position = "none") +
  theme(axis.title.x = element_blank(), axis.title.y = element_blank(), axis.text=element_text(size=14))
print(mapPoints)
