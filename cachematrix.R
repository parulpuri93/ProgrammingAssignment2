## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this 
##The following function "makeCacheMatrix" creates a special "matrix" object which is a list which contains a function to 
##a. set matrix value
##b. gives a value to the matrix created in step a

makeCacheMatrix <- function(x = matrix()) {
  z <- NULL
  set <- function(y){
    x <<- y
    z <<- NULL
  }
  get <- function()x
  setInverse <- function(inverse) z <<- inverse
  getInverse <- function() z
  list(set = set, get = get, 
       setInverse = setInverse, 
       getInverse = getInverse)
}


## Write a short comment describing this function
##c. sets the value of the inverse of the matrix
##d. provides for the inverse of the matrix created in step b

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z <- x$getInverse()
  if(!is.null(z)){
    message("getting cached data")
    return(z)
  }
  mat <- x$get()
  j <- solve(mat,...)
  x$setInverse(z)
  z}
