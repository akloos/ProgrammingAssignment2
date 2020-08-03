## two functions that cache the inverse of a matrix.
## The makeCacheMatrix function creates a matrix object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
}
##define value of variable 
a<-NULL
##set value of matrix with another function
set <- function(y){
  x <<- y
  a<<- NULL
  ##get value of matrix
  get <- function()x
  ##set value of inverse
  setInverse <- function(inverse)a <<- inverse
  ##get value of inverse
  getInverse <- function() a
  ##create a list
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}
##function computes the inverse of the matrix returned by the makeCacheMatrix 
cacheSolve <- function(x, ...) {
  ## Matrix that is the inverse of 'x' 
  a<- x$getInverse()
  ## see if inverse is calculated in catch
  if(!is.null(a)){
    ## display message if inverse is calculated
    message("getting cached data")
    # # return inverse
    return(a)
  }
  ##calculate inverse of matrix 
  mat <- x$get()
  a<- solve(mat,...)
  ## set the value of inverse in the catch with inverse function
  x$setInverse(a)
  a
}
