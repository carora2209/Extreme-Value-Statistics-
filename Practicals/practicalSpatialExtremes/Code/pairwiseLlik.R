rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## Transform the data to unit Fréchet first
frechet <- apply(rain, 2, gev2frech, emp = TRUE) ## <<-- we use the empirical CDF

## Fit a bunch of max-stable models using pairwise likelihood
M0 <- fitmaxstab(frechet, coord[,1:2], "whitmat", nugget = 0)
M1 <- fitmaxstab(frechet, coord[,1:2], "tpowexp", nugget = 0)
M2 <- fitmaxstab(frechet, coord[,1:2], "brown")

## Compare the empirical extremal coefficient cloud with fitted extremal coefficient function
par(mar = c(4, 5, 0.5, 0.5), ps = 14)
concprob(rain, coord[,1:2], col = "grey")
concprob(fitted = M0, n.bins = 200, add = TRUE)## <<- you can pass a fitted model also
plot(M1$conc.prob, from = 0, to = 120, col = 3, add = TRUE)
plot(M2$conc.prob, from = 0, to = 120, col = 4, add = TRUE)
legend("topright", c("Schlather", "Extremal-t", "Brown-Resnick"),
       col = 2:4, lty = 1, bty = "n", inset = 0.05)



