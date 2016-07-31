#write a pair of functions that cache the inverse of a matrix
#this function creates a special "matrix" object that can cache its inverse
makeCacheMatrix <- function(x = matrix()) {
        m <- NULL
        set <- function(y) {
        x <<- y
        m <<- NULL
                }
                get <- function() x
                setMatrix <- function(solve) m <<- solve
                getMatrix <- function() m
                list(set = set, get = get,
                     setMatrix = setMatrix,
                     getMatrix = getMatrix)
}
#this function computes the inverse of the special "matrix" returned by makeCacheMatrix
cacheSolve <- function(x, ...) {
        m <- x$getMatrix()
        if(!is.null(m)) {
                message("getting cached data")
                return(m)
                }
        ## Return a matrix that is the inverse of 'x'
        data <- x$get()
        m <- solve(data, ...)
        x$setMatrix(m)
        m
}

solve(x)

