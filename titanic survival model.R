# examples based on http://nathanieldphillips.com/2016/08/making-fast-good-decisions-with-the-fftrees-r-package/
# load library
library(FFTrees)

# load Titanic data
titanicData <- titanic

# run fft
titanic.fft <- fft(formula = survived ~ ., data = titanicData)

# describe results
titanic.fft

# plot best tree
plot(titanic.fft,
     main = "Titanic Survivers FFT", 
     decision.names = c("Died", "Survived"))

# run trees with a 70% split for training and 30% for testing
titanic.test.fft <- fft(formula = survived ~ ., data = titanicData, train.p = 0.70)

# describe results
titanic.test.fft

# plot best tree
plot(titanic.test.fft,
     main = "Titanic Survivers FFT", 
     decision.names = c("Died", "Survived"))