##############################################
# Exercise 4.2 
# Sketch the autocorrelation functions for the following MA(2) models with parameters
# as specified:
# (a) θ1 = 0.5 and θ2 = 0.4.

par(mfrow=c(1,3))

ma2.sim1 = arima.sim(list(ma = c(0.5,0.4)),n = 100, sd=2);
acf(ma2.sim1, main = "ACF for MA(2) model (a)")

##############################################
# (b) θ1 = 1.2 and θ2 = −0.7.

ma2.sim2 = arima.sim(list(ma = c(1.2,-0.7)),n = 100, sd=2);
acf(ma2.sim2, main = "ACF for MA(2) model (b)")

##############################################
# (c) θ1 = −1 and θ2 = −0.6.

ma2.sim3 = arima.sim(list(ma = c(-1,-0.6)),n = 100, sd=2);
acf(ma2.sim3, main = "ACF for MA(2) model (c)")

##############################################
# Exercise 4.5 
# Calculate and sketch the autocorrelation functions for each of the following
# AR(1) models. Plot for sufficient lags that the autocorrelation function has nearly
# died out.
# (a) φ1 = 0.6.

n = 1000
error = rep(0,n)
a1 = 0.7

# simulating white noise;
noise = rnorm(n,0,2)

par(mfrow=c(2,2))

# simulating AR(1)
error = filter(noise,filter=(0.6),method="recursive",init=0)
acf(error, main = "ACF of AR(1) with a = 0.6")

##############################################
# (b) φ1 = −0.6.

# simulating AR(1)
error = filter(noise,filter=(-0.6),method="recursive",init=0)
acf(error, main = "ACF of AR(1) with a = -0.6")

##############################################
# (c) φ1 = 0.95. (Do out to 20 lags.)

error = filter(noise,filter=(0.95),method="recursive",init=0)
acf(error, main = "ACF of AR(1) with a = 0.95")

##############################################
# (d) φ1 = 0.3.

error = filter(noise,filter=(0.3),method="recursive",init=0)
acf(error, main = "ACF of AR(1) with a = 0.3")

##############################################
# Exercise 4.10 
# Sketch the autocorrelation functions for each of the following ARMA models:
# (a) ARMA(1,1) with φ = 0.7 and θ = 0.4.
par(mfrow=c(1,2))

arma1.sim = arima.sim(list(ar=c(0.7),ma = c(0.4)), n = 100, sd=2)
#plot.ts(arma1.sim, ylim=c(-10,10),main="ARMA(2,2),φ = 0.7 and θ = 0.4")
acf(arma1.sim, main = "ARMA(2,2),φ = 0.7 and θ = 0.4")

##############################################
# (b) ARMA(1,1) with φ = 0.7 and θ = −0.4.

arma2.sim = arima.sim(list(ar=c(0.7),ma = c(-0.4)), n = 100, sd=2)
#plot.ts(arma2.sim, ylim=c(-10,10),main="ARMA(2,2),φ = 0.7 and θ = -0.4")
acf(arma2.sim, main = "ARMA(2,2),φ = 0.7 and θ = -0.4")



