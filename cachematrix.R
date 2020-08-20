## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        # Store NULL indicating no cached inverse
        inverse <- NULL

        # Setters and getters
        set <- function(value) {
                x <<- value
                # Reset inverse cache
                inverse <<- NULL
        }
        get <- function() x

        # Methods to set and get cached inverse
        setInverse <- function(inverseValue) inverse <<- inverseValue
        getInverse <- function() inverse
        list(set = set, get = get,
                setInverse = setInverse, getInverse = getInverse)
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
        
        # Return inverse cache if exists
        if (!is.null(x$getInverse())) {
                message('Getting cached inverse...')
                return(x$getInverse())
        }

        # Solve inverse, store it in cache, and return it
        x$setInverse(solve(x))
        x$getInverse()
}
