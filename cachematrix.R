## I intend to create a new function which will compute the inverse and cache of the matrix

## This function intends create a new "cache" matrix to compute inverse

makeCacheMatrix <- function(mat = matrix()) {
 set <- function(x) {
        mat <<- x;
        inverse <<- NULL;
    }
    get <- function() return(mat);
    setinv <- function(inv) inverse <<- inv;
    getinv <- function() return(inverse);
    return(list(set = set, get = get, setinv = setinv, getinv = getinv))
}


## cacheSolve will calculate the inverse of the matrix.If cacheSolve has computed the inverse, it will retrieve the data

cacheSolve <- function(mat, ...) {
 inverse <- mat$getinv()
    if(!is.null(inverse)) {
        message("Get Cache")
        return(inverse)
    }
    data <- mat$get()
    invserse <- solve(data, ...)
    mtx$setinv(inverse)
    return(inverse)
}
