## Functions to handle the cached inverse of a matrix

## This function create a list containing five functions to handle matrix and
## its inverse

makeCacheMatrix <- function(x = matrix()) {
  inv <- NULL
  inv_esiste<-F
  
  set <- function (y) {
    x<<-y
    inv<<-NULL
    inv_exist<-F
  }
  
  get <- function () x
  set_inv <- function(inversa) {
    inv <<- inversa
    inv_esiste<<-T
  }
  
  get_inv <- function() inv
  inv_exist <- function () inv_esiste
  
  list(set=set, get=get, set_inv=set_inv, get_inv=get_inv, inv_exist=inv_exist)
}


## Return the inverse of the matrix

cacheSolve <- function(x, ...) {
  ## Return a matrix that is the inverse of 'x'
  
  if (!x$inv_exist()){
    inv<-solve(x$get())
    x$set_inv(inv)
  }

  x$get_inv()    
  
}