## makeCacheMatrix and cacheSolve functions allow to cache a costly
## computation, the inversion of the provided Matrix. 

## makeCacheMatrix creates a special "matrix" object that can cache
## its inverse. Assumption: provided matrix is invertible.

makeCacheMatrix <- function(x = matrix()) {

}


## cacheSolve computes the inverse of a special "matrix" object
## (created using makeCacheMatrix). If the inverse has already been
## calculated and (in the meanwhile) the matrix has not changed, then
## this function retrieves the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
