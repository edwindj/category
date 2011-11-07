state <- sample(state.abb, 100, replace=TRUE)
state <- categorical(state, levels=state.abb)

state <- addLabels(state, name=state.name, region=state.region, division=state.division)

categories(state)
labels(state, "name")

relabel(state, "name")

