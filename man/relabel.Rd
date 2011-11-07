\name{relabel}
\alias{relabel}
\title{Change naming}
\usage{
  relabel(x, labelname)
}
\arguments{
  \item{x}{\code{categorical}}

  \item{labelname}{\code{character} name of desired label}
}
\description{
  Change naming
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

