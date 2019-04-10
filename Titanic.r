# titanic data frame is available in your workspace
# Check the structure of titanic
str(titanic)

# Plot 1: Use ggplot() to create bar chart showing Sex and Pclass
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge")

# Plot 2: add facet_grid() layer to Plot 1 (Survived)
ggplot(titanic, aes(x = Pclass, fill = Sex)) +
  geom_bar(position = "dodge") +
  facet_grid(.~Survived)

# Define an object for position jitterdodge, to use below
posn.jd <- position_jitterdodge(0.5, 0, 0.6)

# Plot 3: Plot 2, but use the jitterdodge position object
ggplot(titanic, aes(x = Pclass, y = Age, color = Sex)) +
  geom_point(size = 3, alpha = 0.5, position = posn.jd) +
  facet_grid(.~Survived)
