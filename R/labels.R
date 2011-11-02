#' return labels for the categories
#'
#' @method labels categorical
#' @param object categorical
#' @param labelname \code{character} name of desired label
#' @param ... not used
#' @return labelname \code{character} with label names
#' @export
labels.categorical <- function(object, labelname, ...){
  cats <- categories(object)
  if (missing(labelname) || is.null(cats[[labelname]]))
    return(levels(object))
  as.character(cats[[labelname]])
}

#' Add extra labels to categories
#'
#' @param x \code{categorical}
#' @param ... named labels
#  @return adjusted categorical with extra labels
#' @export
addLabels <- function(x, ...){
  labels <- list(...)
  cats <- cbind(categories(x), as.data.frame(labels,stringsAsFactors=FALSE))
  categories(x) <- cats
  x
}

#' Change naming 
#' 
#' @param x \code{categorical}
#' @param labelname \code{character} name of desired label
#  @return adjusted categorical with renamed levels
#' @export
relabel <- function(x, labelname){
  cats <- categories(x)
  levels(x) <- as.character(cats[[labelname]])
  x
}