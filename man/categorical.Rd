\name{categorical}
\alias{categorical}
\title{Create a categorical vector}
\usage{
  categorical(x = character(), cats, levels, labels =
  levels, ...)
}
\arguments{
  \item{x}{\code{vector} to be coerced to categorical}

  \item{cats}{optional \code{data.frame} with category
  attributes}

  \item{levels}{optional \code{vector} with levels}

  \item{labels}{optional \code{character} labels}

  \item{...}{not used}
}
\value{
  categorical vector
}
\description{
  A categorical vector is an extended \code{factor} with
  extra attributes Creating a categorical vector is almost
  identical to creating a factor.
}

