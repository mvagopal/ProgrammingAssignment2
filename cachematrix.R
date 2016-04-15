## The function makeCacheMatrix will create a 2X2 by matrix and put it into cache and then create an
## inverse of that maytrix and cache that too. The inverse is created and cached  when a random number 
## is greater than 2 and is set to NULL when the random number  is less that 2. 
## This is to simulate circumstance of cache being available or not.


makeCacheMatrix <- function(x = matrix()) {
  
  givenmatrix <<- function(x) {matrix(c(1,2,3,2), nrow = 2, ncol = 2)
    
  }
  
  randomnum <- rnorm(5,mean = 2, sd = 1)
  
  if( randomnum[1] > 2) {
    
    inverseofgivenmatrix <<- solve(givenmatrix())
    
  }else {
    inverseofgivenmatrix <<- NULL
    
  }
  
}


## cachesolve will calculate inverse of givenmatrix and before it caculates the inverse it checks to see
## if the inverse is in the cache or not.

cacheSolve <- function(x) {
  
  
  if (is.null(inverseofgivenmatrix)) {
    inverseofgivenmatrix <<- solve(x)
    print("computed the inverse")
  }  else {
    print("used cache")
  } 
  
  
}
