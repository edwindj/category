#' Create a categorical vector
#'
#' A categorical vector is an extended \code{factor} with extra attributes
categorical <- function(x, ...){
   f <- factor(x)
   attr(f, "categories") <- data.frame(levels=levels(f))
   class(f) <- c("categorical", class(f))
   f
}

#' Create a categorical vector
#'
#' A categorical vector is an extended \code{factor} with extra attributes
#' @export
is.categorical <- function(x) inherits(x, "categorical")


#' Create a categorical vector
#'
#' A categorical vector is an extended \code{factor} with extra attributes
#' @export
print.categorical <- function(x){
  cats <- levels(x)[x[1:min(length(x),10)]]
  print(noquote(cats))
  cat("Categories:", levels(x))
}

 gender <- categorical(c("male", "female", "male"))
 categories(gender)
 gender2 <- addLabels(gender, list(french=c("féminine", "masculine")))
 gender2
 categories(gender2)
 relabel(gender2, "french")