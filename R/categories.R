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
  x
}

label <- function(x, labels=list()){
  cats <- cbind(categories(x), as.data.frame(labels))
  categories(x) <- cats
  x
}

relabel <- function(x, labelname){
  cats <- categories(x)
  levels(x) <- cats[[labelname]]
  x
}

