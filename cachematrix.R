## makeCacheMatrix and cacheSolve functions allow to cache a costly
## computation, the inversion of the provided Matrix. 

## makeCacheMatrix creates a special "matrix" object from the provided matrix
## that can cache its inverse. Assumption: provided matrix is invertible.

makeCacheMatrix <- function(x = matrix()) {
        
        cached_inverse <- NULL # the cached inverse of the provided matrix
        
        # set: change the matrix
        # Setting a new matrix the cached inverse of the matrix is reset to NULL 
        set <- function(y){
                x <<- y # set x to new provided matrix
                cached_inverse <<- NULL # clear cached inverse
        }
        
        # get: get the matrix
        get <- function() x # return x (matrix)
        
        # setinverse: set the inverse of the matrix
        setinverse <- function(inverse){
                cached_inverse <<- inverse 
        }
        
        # getinverse: get inverse of the matrix
        getinverse <- function() cached_inverse
        
        return(list(set = set, get = get, setinverse = setinverse, getinverse = getinverse))

}


## cacheSolve computes the inverse of a special "matrix" object
## (created using makeCacheMatrix). If the inverse has already been
## calculated and (in the meanwhile) the matrix has not changed, then
## this function retrieves the inverse from the cache. 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
