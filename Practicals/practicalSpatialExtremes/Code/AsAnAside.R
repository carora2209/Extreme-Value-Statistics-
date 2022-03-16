rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Estimate concurrence probabilities w.r.t. Zurich
idx.station <- 78##78th station corresponds to Zurich
concurrencemap(rain, coord[,1:2], type = idx.station,
               plot.border = function(add) swiss(city = TRUE, add = add))

## Estimate the expected area of pointwise concurrence cells (default)
concurrencemap(rain, coord[,1:2], plot.border = swiss)
