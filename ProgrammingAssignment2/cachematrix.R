## Functions to cache the inverse of a matrix

## This function isused to create a matrix which is able to cache it's inverse

makeCacheMatrix <- function(x = matrix()) {
        inve <- NULL
        set <- function(y) {
                x <<- y
                inv <<- NULL
        }
        get <- function() x
        setInverse <- function(inverse) inve <<- inverse
        getInverse <- function() inve
        list(set = set,
             get = get,
             setInverse = setInverse,
             getInverse = getInverse)
}


## This function solves the inverse of the matrix returned above

cacheSolve <- function(x, ...) {
       
        inve <- x$getInverse()
        if (!is.null(inve)) {c
                message("getting cached data")
                return(inve)
        }
        mat <- x$get()
        inve <- solve(mat, ...)
        x$setInverse(inve)
        inve
}

