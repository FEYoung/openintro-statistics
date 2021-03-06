# load packages -----------------------------------------------------
library(openintro)

# load data ---------------------------------------------------------
data(gifted)

# plot counts -------------------------------------------------------
pdf("gifted_children_ht_count_hist.pdf", height = 3, width = 6)
par(mar=c(3.7,2.2,0.5,0.5), las=1, mgp=c(2.5,0.7,0), cex.lab = 1.5)
histPlot(gifted$count, col = COL[1], 
         xlab = "Age child first counted to 10 (in months)", ylab = "", 
         axes = FALSE)
axis(1)
axis(2, at = c(0,3,6))
dev.off()

#### needs to be cleaned up -----------------------------------------


pdf("gifted_count_pval.pdf", height = 3, width = 6)

par(mar=c(2,0,0,0), las=1, mgp=c(3,1,0), mfrow = c(1,1))

m = 32
s = 4.31/sqrt(36)
l = 30.69
u = 32 + (32-30.69)

normTail(m = m, s = s, L = l, U = u, axes = FALSE, col = oiB)
axis(1, at = c(m - 3*s,l,m,u,m + 3*s), label = c(NA,l,m,u,NA), cex.axis = 1.5)

dev.off()

###



###

pdf("gifted_momIQ_pval.pdf", height = 3, width = 6)

par(mar=c(2,0,0,0), las=1, mgp=c(3,1,0), mfrow = c(1,1))

m = 100
s = 6.5/sqrt(36)
u = 118.2
l = 81.8

normTail(m = m, s = s, U = u, L = 81.8, axes = FALSE, col = oiB, xlim = c(80,120))
axis(1, at = c(m - 3*s,l,m,u,m + 3*s), label = c(NA,l,m,u,NA), cex.axis = 1.55)

dev.off()
