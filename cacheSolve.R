# calculates inverted matrix. will retrive value from cache if possible
# @see makeCacheMatrix
# @param x 'cached matrix' object
# @param ... optional params to `solve' function
# @returns invertion of given matrix
#
cacheSolve <- function(x, ...) {
  res <- x$getInvMatrix()
  if(!is.null(res))
    return(res)
  matrix <- x$get()
  res <- solve(matrix, ...)
  x$setInvMatrix(res)
  res
}
