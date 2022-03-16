rm(list=ls())
library(SpatialExtremes)
data(rainfall)

## We are going to plot a bunch of circle centered at weather
## stations, whose radius is proportional to the deviation from the
## areal mean and whose color is blue or red depending if we're below
## or above the areal mean

## Symbol plot based on pointwise medians
symbolplot(rain, coord[,1:2], which = "median", plot.border = swiss,
           scale = 5, plot.legend = FALSE)

## Symbol plot based on the pointwise GEV estimates (default)
symbolplot(rain, coord[,1:2], plot.border = swiss,
           scale = 5, plot.legend = FALSE)

