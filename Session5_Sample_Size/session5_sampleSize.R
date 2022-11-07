# The pound indicates a comment
# You should annotate your code heavily to
# 1. understand what you did later on (refresher)
# 2. communicate with your colleagues

library(pwr)

#exercise 1
power.t.test(power=0.8,delta=1,sd=3)

# for paired t-test: formula for sd of the difference
sdiff=sqrt(s1^2+s2^2-2*correlation*s1^2*s2^2)






