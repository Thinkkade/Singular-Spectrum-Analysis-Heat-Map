library(Rssa)

# 3D-SSA example (2D-MSSA)
f = file.choose("dapang.csv")
dapang = read.csv(f)
s<- ssa(dapang,L=c(7))
plot(s,type="values")

# Plot eigenvectors for first 7 components
plot(s,type="vectors",idx=1:7,ref=TRUE,at="same",cuts=50,plot.contrib=TRUE,symmetric =TRUE)
# Plot factor vectors for first 7 components 
plot(s,type="vectors",vectors="factor",idx=1:7,ref=TRUE,at="same",cuts=50,plot.contrib=TRUE,symmetric=TRUE)
# Plot wcor for first 7 components
plot(s,type="wcor",groups=1:7,grid=c(2,6))

# Plot the paired plot for first 6 eigenvectors
plot(s, type = "paired", idx = 1:6)


# The dapang dataset:
data <- as.matrix(dapang)

# Default Heatmap
heatmap(data)

# Use 'scale' to normalize
heatmap(data, scale="column")
legend("bottomleft", inset=.02, title="(v)",
       c("Dapang"), fill=topo.colors(3), horiz=TRUE, cex=0.8)