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

## Consider nested models, i.e., no lon / lat interaction
M1 <- fitspatgev(rain, covariates, loc.form, scale.form, shape.form,
                 scaleCoeff4 = 0)
M2 <- fitspatgev(rain, covariates, loc.form, scale.form, shape.form,
                 locCoeff4 = 0, scaleCoeff4 = 0)

anova(M0, M1)## <<-- p-value really small so what can you conclude???
anova(M1, M2)## <<-- the same here??? So what?
anova(M0, M2)## <<-- Is this coherent from the above two tests?
