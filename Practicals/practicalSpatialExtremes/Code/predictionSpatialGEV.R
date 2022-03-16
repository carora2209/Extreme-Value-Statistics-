rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Define the trend surfaces
loc.form <- scale.form <- y ~ lon * lat
shape.form <- y ~ 1

## Center and scale the covariates
covariates <- scale(coord[,1:2], scale = FALSE)
M0 <- fitspatgev(rain, covariates, loc.form, scale.form, shape.form)

## Define the grid where we want prediction
n.grid <- 250
lon.grid <- seq(645, 770, length = n.grid)
lat.grid <- seq(209, 291, length = n.grid)

grid <- expand.grid(lon.grid, lat.grid)
colnames(grid) <- c("lon", "lat") ## <<-- I told you it's important to
                                  ##      name columns and rows ;-)

## Since we scale the covariates we need to do the same with our grid
grid.scaled <- grid
for (i in 1:2)
    grid.scaled[,i] <- grid.scaled[,i] - attributes(covariates)$"scaled:center"[i]

## Get the prediction for the 25-year return level
predictions <- predict(M0, grid.scaled, ret.per = 25)

## Plot it (yes I know I should write a function that do that
## automagically)
col.palette <- colorRampPalette(c("blue", "white", "red"))

swiss()
image(lon.grid, lat.grid, matrix(predictions[,"Q25"], n.grid), col = col.palette(64),
      add = TRUE)
contour(lon.grid, lat.grid, matrix(predictions[,"Q25"], n.grid), add = TRUE)
swiss(add = TRUE)

