# load library
library(FFTrees)

# load Titanic data
titanicData <- titanic
titanicData$survived <- as.factor(ifelse(titanicData$survived == 1,
                                         'yes', 'no'))

titanic.fft <- fft(formula = survived ~ ., data = titanicData)

titanic.fft

plot(titanic.fft,
     main = "Titanic Survivers FFT", 
     decision.names = c("Died", "Survived"))