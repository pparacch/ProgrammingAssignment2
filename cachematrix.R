## makeCacheMatrix and cacheSolve functions allow to cache a costly
## computation, the inversion of the provided Matrix. 

## makeCacheMatrix creates a special "matrix" object from the provided matrix
## that can cache its inverse. Assumption: provided matrix is invertible.

makeCacheMatrix <- function(x = matrix()) {
        
        cached_inverse <- NULL ## cached inverse of provided matrix
        
        ## set: change the matrix
        ## Setting a new matrix, the cached inverse of the matrix is reset to NULL 
        set <- function(y){
                x <<- y ## set x to new provided matrix
                cached_inverse <<- NULL ## reset cached inverse to NULL
        }
        
        ## get: return the matrix
        get <- function() x
        
        ## setinverse: set the inverse of the matrix
        setinverse <- function(inverse){
                cached_inverse <<- inverse 
        }
        
        ## getinverse: get inverse of the matrix
        getinverse <- function() cached_inverse
        
        ## return special "matrix" object for the provided matrix
        return(list(set = set, get = get, setinverse = setinverse, getinverse = getinverse))

}


## cacheSolve computes the inverse of a special "matrix" object
## (created using makeCacheMatrix). If the inverse has already been
## calculated and (in the meanwhile) the matrix has not changed, then
## this function retrieves the inverse from the cache. 

cacheSolve <- function(x, ...) {
        
        ## get the cached inverse from the special "matrix" object
        inverse <- x$getinverse()
        
        ## Check if the inverse is set (not NULL)
        if(!is.null(inverse)){
                ## if set
                message("getting cached data") ## provide a message 
                return(inverse) ## return cached inverse
        }
        
        ## if not set (NULL)
        data <- x$get() ## get the matrix from the special "matrix" object
        inverse <- solve(data) ## calculate the inverse
        x$setinverse(inverse) ## set calculated inverse matrix in special "matrix" object
        
        ## return a matrix that is the inverse of 'x'
        return(inverse)
}
