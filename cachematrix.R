## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) { 
    cacheMatrix  <- NULL
    set <- function(y){
    
            x <<- y
            cacheMatrix <<- NULL
    }
    get <- function() x
  
    setInverseMatrix <- function(inverse) cacheMatrix <<- inverse
    getInverseMatrix <- function() cacheMatrix
    list(set = set,
         get = get,
         setInverseMatrix = setInverseMatrix,
         getInverseMatrix = getInverseMatrix)

}


## Write a short comment describing this function
## This function return the inverse of a matrix 

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'

    cacheMatrix <-x$getInverseMatrix()
    if(!is.null(cacheMatrix)){
        message("getting cached data")
        return(cacheMatrix)
    }
    temp <- x$get()
    cacheMatrix <- solve(temp)
    x$setInverseMatrix(cacheMatrix)
    cacheMatrix
    
}
