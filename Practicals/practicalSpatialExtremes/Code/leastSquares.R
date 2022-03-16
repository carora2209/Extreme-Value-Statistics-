rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Fit a bunch of max-stable models using least squares
M0 <- lsmaxstab(rain, coord[,1:2], "whitmat", nugget = 0) ##<<-- Schlather model with Whittle-Matern corr. fun.
M1 <- lsmaxstab(rain, coord[,1:2], "gauss", iso = TRUE)  ##<<-- Isotropic Smith model
M2 <- lsmaxstab(rain, coord[,1:2], "tpowexp", nugget = 0) ## <<-- Extremal-t with powered exponential corr. fun.
M3 <- lsmaxstab(rain, coord[,1:2], "brown") ## <<-- Brown--Resnick process

## Compare the empirical extremal coefficient cloud with fitted extremal coefficient function
fmadogram(rain, coord[,1:2], which = "ext", col = "grey")
fmadogram(fitted = M0, which = "ext", n.bins = 200, add = TRUE)## <<- you can pass a fitted model also
plot(M1$ext.coeff, from = 0, to = 120, col = 3, add = TRUE)
plot(M2$ext.coeff, from = 0, to = 120, col = 4, add = TRUE)
plot(M3$ext.coeff, from = 0, to = 120, col = 5, add = TRUE)
legend("bottomright", c("Schlather", "Smith", "Extremal-t", "Brown-Resnick"),
       col = 2:5, lty = 1, bty = "n", inset = 0.05)

