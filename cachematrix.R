# The functions help us to calculate faster by not repeating the same 
# calculation again and again

# It creates a special matrix object that can cache its inverse matrix.

makeCacheMatrix <- function(x = matrix()) {
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() {x}
    setInverse <- function(inverse) {inv <<- inverse}
    getInverse <- function() {inv}
    return(list(set = set,
                get = get,
                setInverse = setInverse,
                getInverse = getInverse))
}


# This returns a matrix that is the inverse of x

cacheSolve <- function(x, ...) {
    ## Return a matrix that is the inverse of 'x'
    inv <- NULL
    set <- function(y) {
        x <<- y
        inv <<- NULL
    }
    get <- function() {x}
    setInverse <- function(inverse) {inv <<- inverse}
    getInverse <- function() {inv}
    return(list(set = set,
                get = get,
                setInverse = setInverse,
                getInverse = getInverse))
}
