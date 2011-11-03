#' Returns categories of a categorical vector
#' 
#' Return categories of a \code{\link{categorical}} vector
#' @rdname categories
#' @param x \code{categorical}
#' @export
categories <- function(x){
  attr(x, "categories")
}

#' Number of categories
#' 
#' Return the number of categories
#' @rdname categories
#' @return number of categories
#' @export
ncategories <- function(x){
  NROW(categories(x))
}


#' Set categories informations
#' @rdname categories
#' @param value \code{data.frame} with information on categories. 
#' Each row is a category.
#' @usage categories(x) <- value
#' @export
`categories<-` <- function(x, value){
  # TODO check value if it is a data.frame and set levels to
  attr(x, "categories") <- value
  x
}