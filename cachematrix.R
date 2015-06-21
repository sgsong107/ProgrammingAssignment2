## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  #Initializing require variables
  m <- NULL
  set <- function(y) {
    x <<- y
    m <<- NULL
  }
  get <- function() x
  #Computing inverse of matrix m by 'solve' function
  setinverse <- function(solve) m <<- solve
  #Getting inverse of matrix m
  getinverse <- function() m
  list(set = set, get = get,
       setinverse = setinverse,
       getinverse = getinverse)

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
  m <- x$getinverse()
  #Print matrix if it is inversed
  if(!is.null(m)) {
    message("getting cached data")
    return(m)
  }
  #Assigning inverse of m and returning
  data <- x$get()
  m <- solve(data, ...)
  x$setinverse(m)
  m
        ## Return a matrix that is the inverse of 'x'
}
