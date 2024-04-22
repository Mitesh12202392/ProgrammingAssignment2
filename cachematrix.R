makeCacheMatrix <- function(x) {
  # Create a list to store the matrix and its inverse
  matrix <- list(data = x, inverse = NULL)
  
  # Function to return the cached inverse or calculate and store it
  cacheSolve <- function(...) {
    # Check if inverse is already calculated
    if (is.null(matrix$inverse)) {
      # Calculate inverse if not cached
      matrix$inverse <- solve(matrix$data)
    }
    # Return the cached inverse
    matrix$inverse
  }
  
  # Return the list containing the matrix and the cacheSolve function
  return(list(matrix = matrix, solve = cacheSolve))
}
