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
state <- sample(state.abb, 100, replace=TRUE)
state <- categorical(state, levels=state.abb)

state <- addLabels(state, name=state.name, region=state.region, division=state.division)

categories(state)
labels(state, "name")

relabel(state, "name")

}

