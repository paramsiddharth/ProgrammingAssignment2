## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inverse <- NULL
        set <- function(value) {
                x <<- value
                inverse <<- NULL
        }
        get <- function() x
        setInverse <- function(inverseValue) inverse <<- inverseValue
        getInverse <- function() inverse
        list(set = set, get = get,
                setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        if (!is.null(x$getInverse())) {
                message('Getting cached inverse...')
                return(x$getInverse())
        }
        x$setInverse(solve(x))
        x$getInverse()
}
