# create a random sample of states
state <- sample(state.abb, 10, replace=TRUE)

# coerce it to a categorical vector
state <- categorical(state, levels=state.abb)

# add extra information of states
state <- add_labels(state, name=state.name, region=state.region, division=state.division)

categories(state)
labels(state, "region")

state2 <- relabel(state, "name")
state2
categories(state2)
