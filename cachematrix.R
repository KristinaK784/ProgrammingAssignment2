## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {

}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
}
makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  set <- function(y) {
    x <<- y
    inv <<- NULL
  }
  get <- function() x
  setInverse <- function() inv <<- solve(x) #calculate the inverse
  getInverse <- function() inv
  list(set = set,
       get = get,
       setInverse = setInverse,
       getInverse = getInverse)
}
funs <- makeCacheMatrix()
funs$set(matrix(1:4, 2))
funs$get()
#     [,1] [,2]
#[1,]    1    3
#[2,]    2    4
funs$setInverse()
funs$getInverse()
#     [,1] [,2]
#[1,]   -2  1.5
#[2,]    1 -0.5
