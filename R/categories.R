#' categories
#' @export
categories <- function(x){
  attr(x, "categories")
}


#' categories
#' @rdname categories
#' @export
`categories<-` <- function(x, value){
  # TODO check value if it is a data.frame and set levels to
  attr(x, "categories") <- value
}