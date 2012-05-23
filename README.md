Category 
========

category is a utility package for categorical vectors. It extends *R* `factor`s with extra properties, that can be used to 
switch easily between codes and labels of categories. 

Installation
------------

Currently `category` is not available from CRAN. The current development version can be installed using `devtools`.


```
library(devtools)
install_github("category", "edwindj")
```

Usage
-----



```r
library(category)
gender.categories <- data.frame( label = c("male", "female")
                               , code  = c("M","F")
                               )


gender <- categorical( c("male", "male", "female", "male")
                     , cats=gender.categories
                     )

print(gender)
```



```
## [1] male   male   female male  
## Categories: male female
```




`gender` is a factor but has extra properties that can be used to recode or relabel this factor.



```r
is.categorical(gender)
```



```
## [1] TRUE
```



```r
is.factor(gender)
```



```
## [1] TRUE
```



```r
categories(gender)
```



```
##    label code
## 1   male    M
## 2 female    F
```



```r
relabel(gender, "code")
```



```
## [1] M M F M
## Categories: M F
```




Labels
------


```r
labels(gender)
```



```
## [1] "male"   "male"   "female" "male"  
```



```r
labels(gender, "code")
```



```
## [1] M M F M
## Levels: F M
```



