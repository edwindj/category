% Generated by roxygen2: do not edit by hand
% Please edit documentation in R/categorical.R
\name{categorical}
\alias{categorical}
\title{Create a categorical vector}
\usage{
categorical(x = character(), cats, levels, labels = levels, ...)
}
\arguments{
\item{x}{\code{vector} to be coerced to categorical}

\item{cats}{optional \code{data.frame} with category attributes}

\item{levels}{optional \code{vector} with levels}

\item{labels}{optional \code{character} labels}

\item{...}{not used}
}
\value{
categorical vector
}
\description{
A categorical vector is an extended \code{factor} with extra attributes
Creating a categorical vector is almost identical to creating a factor.
}
\examples{
gendercats <- data.frame( label = c("male", "female")
                        , code = c("M","F")
                        )


gender <- categorical(c("male", "male", "female", "male"), cats=gendercats)

gender
categories(gender)
relabel(gender, "code")
}

