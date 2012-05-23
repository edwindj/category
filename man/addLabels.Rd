\name{addLabels}
\alias{addLabels}
\title{Add extra labels to categories}
\usage{
  addLabels(x, ...)
}
\arguments{
  \item{x}{\code{categorical}}

  \item{...}{named labels in same order as
  \code{categories(x)}}
}
\description{
  Add extra labels to categories
}
\examples{
# create a random sample of states
state <- sample(state.abb, 10, replace=TRUE)

# coerce it to a categorical vector
state <- categorical(state, levels=state.abb)

# add extra information of states
state <- addLabels(state, name=state.name, region=state.region, division=state.division)

categories(state)
labels(state, "region")

state2 <- relabel(state, "name")
state2
categories(state2)
}

