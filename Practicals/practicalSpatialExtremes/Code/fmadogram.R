rm(list=ls())
library(SpatialExtremes)

## First load some data (already formatted)
data(rainfall)

## These data are maximum daily rainfall amounts over the years
## 1962–2008 occuring during June–August at 79 sites in Switzerland.

ls() ## <<-- we have two R objects 'coord' (the spatial coordinates)
     ##      and 'rain' (annual maxima precipitation)

## Use the fmadogram function to assess the spatial dependence (if any)
fmadogram(rain, coord[,1:2])
fmadogram(rain, coord[,1:2], n.bins = 300)

## Please feel free to give me your comments !!!
