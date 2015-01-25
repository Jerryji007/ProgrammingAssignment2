

makeCacheMatrix <- function(z = matrix()) {
  m<-NULL
  set<-function(y){
    z<<-y
    m<<-NULL
  }
  get<-function() z
  setmatrix<-function(solve) m<<- solve
  getmatrix<-function() m
  list(set=set, get=get,
       setmatrix=setmatrix,
       getmatrix=getmatrix)
}
  
cacheSolve <- function(z, ...) {
 
  m<-z$getmatrix()
  if(!is.null(m)){
    message("getting cached data lol")
    return(m)
  }
  matrix<-z$get()
  m<-solve(matrix, ...)
  z$setmatrix(m)
  m
}
