rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Define the trend surfaces
loc.form <- y ~ lon * lat
scale.form <- y ~ lon + lat
shape.form <- y ~ 1

## Center and scale the covariates
coord <- scale(coord[,1:2], scale = FALSE)
M0 <- fitmaxstab(rain, coord[,1:2], "twhitmat", nugget = 0, loc.form,
                 scale.form, shape.form)

