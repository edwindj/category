#' Create a categorical vector
#'
#' A categorical vector is an extended \code{factor} with extra attributes
#' Creating a categorical vector is almost identical to creating a factor.
#' @param x \code{vector} to be coerced to categorical
#' @param cats optional \code{data.frame} with category attributes
#' @param levels optional \code{vector} with levels
#' @param labels optional \code{character} labels 
#' @param ... not used
#' @return categorical vector
categorical <- function(x=character(), cats, levels, labels=levels, ...){  
   flist <- list(x=x)
   if (!missing(labels)) flist$labels <- labels
   if (!missing(levels)){
     flist$levels <- levels
   } else if (!missing(cats)) {
     flist$levels <- cats[[1]]
   }
   rm(levels)
   
   f <- do.call(factor, flist)
   
   if (missing(cats)){
     cats <- data.frame("label"=levels(f), stringsAsFactors=FALSE)
   }
   
   categories(f) <- cats
   class(f) <- c("categorical", class(f))
   f
}

#' Check if a vector is a categorical vector
#'
#' @param x categorical vector
#' @return TRUE if vector is categorical
#' @export
is.categorical <- function(x) inherits(x, "categorical")

#' Coerce a vector to categorical
#'
#' A \code{\link{categorical}} vector is an extended \code{factor} with extra attributes
#' @param x categorical vector
#' @param ... not used
#' @export
as.categorical <- function(x, ...){
  if (is.categorical(x)) return(x)
  f <- as.factor(x)
  #attr(f, "categories") <- data.frame(labels=levels(f))
  categories(f) <- data.frame(label=levels(f), stringsAsFactors=FALSE)
  class(f) <- c("categorical", class(f))
  f  
} 

#' Print a categorical vector
#'
#' Print a \code{\link{categorical}} vector
#' @method print categorical
#' @param x categorical vector
print.categorical <- function(x){
  cats <- levels(x)[x[1:min(length(x),10)]]
  print(noquote(cats))
  cat("Categories:", levels(x))
}
