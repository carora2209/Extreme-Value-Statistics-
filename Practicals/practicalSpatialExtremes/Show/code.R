rm(list=ls())
library(SpatialExtremes)

## Illustration of a max-stable process
set.seed(1234)
n.sim <- 50
coord <- seq(-5, 5, length = 1000)
Y <- sqrt(2 * pi) * pmax(rgp(n.sim, coord, "powexp", range = 1, smooth = 1.9999), 0)
poisson <- 1 / cumsum(rexp(n.sim))

Phi <- poisson * Y
Z <- apply(Phi, 2, max)

par(mar = c(4, 5, 0.5, 0.5), ps = 14)
matplot(coord, t(Phi), lty = 1, col = "grey", ylab = expression(Z(s)), xlab = expression(s),
        type = "l")
lines(coord, Z, col = "orange", lwd = 1.5)

## Illustration of its inner structure
observed.at <- c(-4, -1, 4)
idx <- NULL
for (pos in observed.at)
    idx <- c(idx, which.min(abs(coord - pos))[1])

idx.extremal.fct <- NULL
for (j in idx)
    idx.extremal.fct <- c(idx.extremal.fct, which(Phi[,j] == Z[j]))

plot(coord, Z, col = "orange", lwd = 5,
     xlab = expression(s), ylab = expression(Z(s)), type = "l",
     ylim = c(0, max(Phi)))

points(observed.at, Z[idx], pch = 15, col = "seagreen3", cex = 2)

matlines(coord, t(Phi[idx.extremal.fct,]), lty = 1, lwd = 1.5,
         col = c("red", "black", "blue"))

matlines(coord, t(Phi[-idx.extremal.fct,]), lty = 1, col = "grey")






