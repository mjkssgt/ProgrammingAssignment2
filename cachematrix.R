## Put comments here that give an overall description of what your
## functions do

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
  z<-NULL#inversed or not
  y<-x
  self.list <- list(
    set=function(x2){#set new data
      x<<-x2
    },
    
    get=function(){#get the matrix
      y
    },
    
    setinverse= function(inverse) {
      z<<-inverse
      z
    },
    
    getinverse=function(){z}
  )
  class(self.list) <- "makeCacheMatrix"
  self.list
}


## Write a short comment describing this function

cacheSolve <- function(x, ...) {
        ## Return a matrix that is the inverse of 'x'
  z<-x$getinverse()
  if(!is.null(z)){#already inversed
    message("getting cached data")
    return(x)}
  data<-x$get()
  z<-solve(data)    
  x$setinverse(z)
}
