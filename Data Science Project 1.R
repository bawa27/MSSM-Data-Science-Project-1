setwd("C:/Users/bawaa/OneDrive/Documents/School/Data Science/NASA Kepler Exoplanet Search Results")
rawDf <- read.csv(file = "cumulative.csv", 
                  header = TRUE, 
                  sep = ",", 
                  dec = ".")
View(rawDf)

rawDf[is.na(rawDf)] <- 0
mean(rawDf$koi_depth)
median(rawDf$koi_depth)
var(rawDf$koi_depth)
sd(rawDf$koi_depth)

mean(rawDf$koi_duration)
median(rawDf$koi_duration)
var(rawDf$koi_duration)
sd(rawDf$koi_duration)

barplot(rawDf$koi_depth,
        main="Transit Depth(ppm)",
        xlab = "Planet Count",
        ylab = "Depths",
        col="darkred")

hist(rawDf$koi_depth,
     main="Frequency of Transit Depth(ppm)",
     col="darkmagenta",
     xlab="Depth",
     xlim = c(0,650000),
     breaks = 30)

barplot(rawDf$koi_duration,
        main="Transit Duration",
        xlab = "Planet Count",
        ylab = "Durations",
        col="darkred")

hist(rawDf$koi_duration,
     main="Frequency of Transit Duration(hours)",
     col="darkmagenta",
     xlab="Depth",
     xlim = c(0,75),
     breaks = 30)

plot(x = rawDf$koi_depth, y = rawDf$koi_duration,
     main = "Transit Depth vs Transit Duratuion",
     xlab = "Depth(ppm)",
     ylab = "Duration(hours)")