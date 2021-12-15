pdf("@p_GC-cov.pdf")
bubble <- read.csv("@p.3.tsv",header=TRUE, sep="\t")
radius <-sqrt(bubble$length/pi)
symbols(bubble$coverage,bubble$gc, circles=radius, inches=0.5, xlab="Coverage", ylab="G+C content")
text (bubble$coverage,bubble$gc,bubble$node,cex=0.5)
dev.off
