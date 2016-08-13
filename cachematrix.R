## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

#makeCacheMatrix <- function(y = matrix()) {

#}


## Write a short comment describing this function

#cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
#}
##### FUnction 1 ####################################################################################################
makeCacheMatrix <- function(y = matrix()) {
  matrix <- NULL
  set <- function(x) {
    y <<- x
    matrix <<- NULL #initialising 
  }
  get <- function() y
  setinverse <- function(inverse) matrix <<- inverse #storing the inverse
  getinverse <- function() matrix # getting the matirx 
  list(set = set, 
       get = get,
       setinverse = setinverse,
       getinverse = getinverse)
}

##### Function 2 - Solving for inverse ##################################################################################################

cacheSolve <- function(y, ...) {
  matrix <- y$getinverse()
  if(!is.null(matrix)) { #checking if the inverse has been calculated before 
    message("getting cached matrix") 
    return(matrix)
  }
  data <- y$get()
  matrix <- solve(data, ...) #Solve the mnatrix equation and get the inverse 
  y$setinverse(matrix)
  matrix #returning the inverse of the matrix 
}


