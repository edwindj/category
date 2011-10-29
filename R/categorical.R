#' Create a categorical vector
#'
#' A categorical vector is an extended \code{factor} with extra attributes
categorical <- function(x, ...){
   f <- as.factor(x)
   class(f) <- c("categorical", class(f))
   f
}

is.categorical <- function(x) inherits(x, "categorical")

#gender <- categorical(c("male", "female", "male"))