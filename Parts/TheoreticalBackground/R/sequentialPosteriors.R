setwd("~/Desktop/MastersThesis/MastersThesis2/Parts/TheoreticalBackground/R/")

png(file = "../Figs/sequentialBeta.png", width = 1200, height = 800, pointsize = 20)
plot(NULL, xlim = c(-0.2, 1.2), ylim = c(0, 3), 
     axes = F, xlab = expression(theta), ylab = "")

axis(side = 1, at = seq(0, 1, 0.2), labels = seq(0, 1, 0.2))

lab = seq(0, 1, 0.2)

for(i in 1:length(lab)){
  lines(c(lab[i], lab[i] - 0.2), c(0, 1), lty = 3)
  lines(c(lab[i], lab[i]), c(-1, 0), lty = 3)
}

lines(c(-0.2, 0.8), c(1, 1), lty = 3)

drawBeta = function(a, b, offsetX, offsetY){
  x = seq(0 - offsetX, 1 - offsetX, length.out = 100)
  y = dbeta(x + offsetX, a, b) + offsetY
  polygon(
    c(x, x[100], x[1]),
    c(y, offsetY, offsetY), 
    col = rgb(1, 0, 0, 0.1),
    border = NA
  )
  
  points(x, y, type = "l")
}

drawBeta(2, 2, 0.2, 1)
drawBeta(3, 2, 0.1, 0.5)
drawBeta(6, 2, 0.0, 0)

par(family = "serif")
text(0.3, 2.6, "N = 2")
text(0.6, 2.4, "N = 3")
text(0.85, 2.9, "N = 6")

dev.off()