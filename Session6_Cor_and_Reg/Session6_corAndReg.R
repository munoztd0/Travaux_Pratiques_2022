# The pound indicates a comment
# You should annotate your code heavily to
# 1. understand what you did later on (refresher)
# 2. communicate with your colleagues

# import your data (eggs and diet data)

# create a scatterplot of weight versus number of eggs 

# compute correlation
cor.test(eggs$NbEggs,eggs$weight)

# compute regression
eggs.lm <- lm(NbEggs~weight,data=eggs)


