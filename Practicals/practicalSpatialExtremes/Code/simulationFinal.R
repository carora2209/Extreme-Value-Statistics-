rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Define the trend surfaces
loc.form <- y ~ lon.scaled * lat.scaled
scale.form <- y ~ lon.scaled + lat.scaled
shape.form <- y ~ 1

## Center and scale the covariates
coord.centered <- scale(coord[,1:2], scale = FALSE)

## You can fit the model by invoking the following code
##
##M0 <- fitmaxstab(rain, coord[,1:2], "twhitmat", nugget = 0, loc.form,
##                 scale.form, shape.form, marg.cov = covariates)
##
## but for time reasons just do
load("finalFit.RData")

## Define the grid where we want prediction
n.grid <- 50
lon.grid <- seq(645, 770, length = n.grid)
lat.grid <- seq(209, 291, length = n.grid)

grid <- expand.grid(lon.grid, lat.grid)
colnames(grid) <- c("lon", "lat") ## <<-- I told you it's important to
                                  ##      name columns and rows ;-)

## Since we scale the covariates we need to do the same with our grid
grid.scaled <- grid
for (i in 1:2)
    grid.scaled[,i] <- (grid.scaled[,i] - attributes(coord)$"scaled:center"[i])

## Get the prediction for the GEV parameters
predictions <- predict(M0, grid.scaled)
loc.pred <- matrix(predictions[,"loc"], n.grid)
scale.pred <- matrix(predictions[,"scale"], n.grid)
shape.pred <- matrix(predictions[,"shape"], n.grid)

## Simulate from our fitted model

## First with unit Frechet margins

## For time reasons again...
##sim <- rmaxstab(1, cbind(lon.grid, lat.grid), "twhitmat",
##                DoF = M0$param["DoF"], nugget = M0$param["nugget"],
##                range = M0$param["range"], smooth = M0$param["smooth"],
##                grid = TRUE)
load("oneSimFinalModel.RData")


## Switch to the appropriate GEV margins
for (i in 1:n.grid)
    for (j in 1:n.grid)
        sim[i,j] <- frech2gev(sim[i,j], loc.pred[i,j], scale.pred[i,j], shape.pred[i,j])

## Plot the realization
col.palette <- colorRampPalette(c("blue", "white", "red"))
swiss()
image(lon.grid, lat.grid, sim, col = col.palette(64), add = TRUE)
swiss(add = TRUE)





