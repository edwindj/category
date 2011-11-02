#' return labels for the categories
#'
#' @method labels categorical
#' @param x categorical
labels.categorical <- function(x, ...){
  levels(x)
}



addLabels <- function(x, labels=list()){
  cats <- cbind(categories(x), as.data.frame(labels))
  categories(x) <- cats
  x
}

relabel <- function(x, labelname){
  cats <- categories(x)
  levels(x) <- cats[[labelname]]
  x
}