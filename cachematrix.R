## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
t <- NULL
set <- function(y){
	x <<- y
	t <<- NULL
}
get <- function() x
setinverse <- function(inverse) t <<- inverse
getinverse <- function() t
list(set = set, get = get,
     setinverse = setinverse
     getinver = getinverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
	t <- x$getinverse()
	if(!is.null(t)){
		message("getting cached data")
		return(t)
	}
	data <- x$get()
	t <- mean(data, ...)
	x$setmean(t)
	t
        ## Return a matrix that is the inverse of 'x'
}
