#' Returns categories
#' @rdname categories
#' @param x \code{categorical}
#' @export
categories <- function(x){
  attr(x, "categories")
}

#' Number of categories
#' @rdname categories
#' @return number of categories
#' @export
ncategories <- function(x){
  NROW(categories(x))
}


#' Set categories
#' @rdname categories
#' @param value \code{data.frame} with information on categories
#' @export
`categories<-` <- function(x, value){
  # TODO check value if it is a data.frame and set levels to
  attr(x, "categories") <- value
  x
}