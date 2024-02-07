## Estimate the strength of density dependence

# Clear workspace and close graphics
rm(list = ls())
graphics.off()

# Load data
filename <- "data/popdata.Rdata"
load(filename)
rm(filename)


# Density dependent hypothesis predicts 
# a negative relationship between per-capita growth rate
# and population size (unless there is an Allee effect).
# So, we need to calculate growth rate.


# Calculate growth rate
pop_size_now <- pop_size[-1]
pop_size_lasttime <- pop_size[-length(pop_size)]

R <- pop_size_now / pop_size_lasttime


# Check for gensitrt dependence
per_cap_growth <- R / pop_size
par(cex = 3)
plot(pop_size, per_cap_growth,
    xlab = "Population size",
    ylab = "Per cap. growth rate")


#THIS IS A TRIAL TO SEE IF BRANCHING WORKS
