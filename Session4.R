#Exercise 1
# Part A
CoronaCounty <- read.table("~/Documents/R Laboratory/RKI_Corona_LandKreise_Mai.csv", sep = ";", header = TRUE)

#Part B

library(mltools)
CoronaCounty[,"InfectionsPer100000_grouped"]<- bin_data(CoronaCounty$Infektionen.pro.100.000.Einwohner, 
                                                        bins=10, binType="quantile")

