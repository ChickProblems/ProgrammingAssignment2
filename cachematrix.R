## Put comments here that give an overall description of what your
## functions do
## Inverts a Matrix
## Calculates fresh if not cached and stores values
## Takes from cache, if already calculated and stored

## Write a short comment describing this function
## Creates a special vector, as list, containing functions
## for setting and getting values of inverse of matrix

makeCacheMatrix <- function(x = matrix()) {
       s <- NULL
       set <-function(y){
               x<<-y
               s<<-NULL
        }
        get <- function()x
	setinverse <- function(inverse)s <<- inverse
	getinverse <- function()s
	list(set=set,get=get,setinverse=setinverse ,getinverse=getinverse)
}

## Write a short comment describing this function
## This function computes the inverse of the matrix returned by the above function.

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
          s <- x$getinverse()
          if(!is.null(s)) {
                message("getting cached data")
                return(s)
        }
        data <- x$get()
        s <- solve(data, ...)
        x$setinverse(s)
        s
}
