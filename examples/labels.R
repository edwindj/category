# create a random sample of states
state <- sample(state.abb, 10, replace=TRUE)

# coerce it to a categorical vector
state <- categorical(state, levels=state.abb)

# add extra information of states
state <- addLabels(state, name=state.name, region=state.region, division=state.division)

categories(state)
labels(state, "region")

# create a new categorical with labels "name"
state2 <- relabel(state, "name")
state2
categories(state2)
