setwd("~/Desktop/MastersThesis/MastersThesis2/Parts/TheoreticalBackground/R/")

png(filename = "../Figs/discrBayes.png", width = 300 * 5, height = 300 * 2)
par(mfrow = c(1, 2))
par(mar = c(6, 5, 1, 1))
par(family = "serif")

# LEFT PANEL

plot(NULL, 
     ylim = c(0, 1), 
     xlim = c(0.5, 4.5), 
     axes = F, 
     xlab = "", 
     ylab = "P(Card = Suit)")
axis(side = 1, 
     at = c(1, 2, 3, 4), 
     labels = c("Hearts", "Diamonds", "Clubs", "Spades"), 
     las = 2)
axis(side = 2)

abline(h = seq(0, 1, 0.25), lty = 3)

polygon(c(0.75, 1.25, 1.25, 0.75), c(0, 0, 0.25, 0.25), 
        col = rgb(1, 0.5, 0.5), border = NA)

polygon(c(0.75, 1.25, 1.25, 0.75) + 1, c(0, 0, 0.25, 0.25), 
        col = rgb(1, 0.5, 0.5), border = NA)


polygon(c(0.75, 1.25, 1.25, 0.75) + 2, c(0, 0, 0.25, 0.25), 
        col = rgb(0.3, 0.3, 0.3), border = NA)

polygon(c(0.75, 1.25, 1.25, 0.75) + 3, c(0, 0, 0.25, 0.25), 
        col = rgb(0.3, 0.3, 0.3), border = NA)


# RIGHT PANEL 

plot(NULL, 
     ylim = c(0, 1), 
     xlim = c(0.5, 4.5), 
     axes = F, 
     xlab = "", 
     ylab = "P(Card = Suit)")
axis(side = 1, 
     at = c(1, 2, 3, 4), 
     labels = c("Hearts", "Diamonds", "Clubs", "Spades"), 
     las = 2)
axis(side = 2)

abline(h = seq(0, 1, 0.25), lty = 3)

polygon(c(0.75, 1.25, 1.25, 0.75), c(0, 0, 0.5, 0.5), 
        col = rgb(1, 0.5, 0.5), border = NA)

polygon(c(0.75, 1.25, 1.25, 0.75) + 1, c(0, 0, 0.5, 0.5), 
        col = rgb(1, 0.5, 0.5), border = NA)


polygon(c(0.75, 1.25, 1.25, 0.75) + 2, c(0, 0, 0, 0), 
        col = rgb(0.3, 0.3, 0.3), border = NA)

polygon(c(0.75, 1.25, 1.25, 0.75) + 3, c(0, 0, 0, 0), 
        col = rgb(0.3, 0.3, 0.3), border = NA)
dev.off()
