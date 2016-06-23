# titanic is avaliable in your workspace

# Check out the structure of titanic
str(titanic)
head(titanic)
# Use ggplot() for the first instruction
# Distribution of Sex by Ship class
# position = "dodge" creates dodgy bars - two bars for each sex
ggplot(titanic, aes(x=factor(Pclass), fill=factor(Sex))) + 
  geom_bar(position = "dodge")

# Overlay Survival by adding facet_grid option
# Use ggplot() for the second instruction
ggplot(titanic, aes(x=factor(Pclass), fill=factor(Sex))) + 
  geom_bar(position = "dodge") + 
  facet_grid(". ~ Survived")


# Define Position jitter (use below)
posn.j <- position_jitter(0.5, 0)

# Jitter scatter plot to get distribution by Age, Shipclass and sex
# Use ggplot() for the last instruction
ggplot(titanic, aes(x=factor(Pclass), y= Age, col=factor(Sex))) + 
  geom_jitter(position = posn.j, size=3, alpha = 0.5) + 
  facet_grid(". ~ Survived")

