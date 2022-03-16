rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Define the trend surfaces
loc.form <- scale.form <- y ~ lon * lat
shape.form <- y ~ 1

## Rmk: In the formula above we use lon and lat since these are the
##      column names of 'coord'

## It is always a good idea to center the "covariates" here
## coord[,1:2] because the parameters are "more orthogonal"
coord <- scale(coord, scale = FALSE)

## Compare the two following lines of code and comment
M0 <- fitspatgev(rain, coord[,1:2], loc.form, scale.form, shape.form)
M1 <- fitspatgev(rain, scale(coord[,1:2]), loc.form, scale.form, shape.form)


