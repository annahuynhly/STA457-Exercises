# Chapter 1.
# Exercises: 1.3, 1.4, 1.5.

# General vibe: it seems like the exercises are simple - am I missing something?

##############################################
# Exercise 1.3
# Simulate a completely random process of length 48 with independent, normal values.
# Plot the time series plot. Does it look “random”? Repeat this exercise several
# times with a new simulation each time.

random_process_norm = rnorm(48, mean = 0, sd = 1)
plot.ts(random_process_norm)

# It generally does look random, yes.

##############################################
# Exercise 1.4
# Simulate a completely random process of length 48 with independent, chi-square
# distributed values, each with 2 degrees of freedom. Display the time series plot.
# Does it look “random” and nonnormal? Repeat this exercise several times with a
# new simulation each time.

random_process_chisq = rchisq(48, df = 2)
plot.ts(random_process_chisq)

# it looks random and nonnormal.

##############################################
# Exercise 1.5
# Simulate a completely random process of length 48 with independent, t-distributed
# values each with 5 degrees of freedom. Construct the time series plot. Does it
# look “random” and nonnormal? Repeat this exercise several times with a new
# simulation each time.

random_process_t = rt(48, df = 5)
plot.ts(random_process_t)

# it looks random and nonnormal.

