## This is a function that contains a matrix which eneables you to cache the inverse of the matrix

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y) {
        x <<- y
        inv <<- NULL
}
get <- function() x
setInverse <- function(inverse) inv <<- inverse
getInverse <- function() inv
list(set = set,
        get = get,
        setinverse = setinverse,
        getinverse = getinverse)
}

## This function cache's the inverse

cacheSolve <- function(x = matrix(), ...) {
        inv <- x$getinverse()
        if(!is.null(inv)){
        message("getting data inverse")
        return(inv)
        }
        data <- x$get()
        inv <- inverse(data, ...)
        x$setinverse(inv)
        inv
}