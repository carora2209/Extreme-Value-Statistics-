rm(list=ls())
library(SpatialExtremes)

## Simulate from an extremal-t model at non gridded data
n.site <- 5
x <- runif(n.site, 0, 10)
y <- runif(n.site, 0, 10)

n.obs <- 20
sim <- rmaxstab(n.obs, cbind(x, y), "twhitmat", DoF = 4,
                nugget = 0, range = 3, smooth = 1)


## Simulate from an extremal-t model at gridded data
n.site <- 50
x <- y <- seq(0, 10, length = n.site)

sim2 <- rmaxstab(1, cbind(x, y), "twhitmat", DoF = 4,
                nugget = 0, range = 3, smooth = 1, grid = TRUE)

## Plot the realization with a log-scale for visualization purposes
filled.contour(log(sim2))
