setwd("~/Desktop/MastersThesis/MastersThesis2/Parts/TheoreticalBackground/R/")


f = function(x){
  0.25 * dnorm(x, 0, 1) + 
    0.25 * dnorm(x, -1, 0.5) + 
    0.25 * dnorm(x, 0.5, 0.2) + 
    0.25 * dnorm(x, 1, 0.5)  
}


n = 1e5
x = runif(n, -3, 3)
y = runif(n, 0, 0.75)

smpls = x[which(y < f(x))]

png(filename = "../Figs/etnropyApproxHist.png", 
    width = 300 * 5, height = 600, pointsize = 20)
par(family = "serif")
par(mfrow = c(1, 3))
curve(f(x), -3, 3, bty = "l", ylab = "Density")
plot(smpls[1:500], bty = "l", xlab = "x")
hist(smpls, prob = T, breaks = 30, bty = "l", xlab = "x", main ="")
dev.off()


integrate(function(x) { f(x) * log(f(x))}, -3, 3)

h = hist(smpls, breaks = 30, plot = FALSE)

-sum(h$density * log(h$density)) * diff(h$mids[1:2])
-sum(h$density * log(h$density)  * diff(h$mids[1:2]))

