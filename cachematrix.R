## The first function would 
## The second function would calculate the inverse of the special matrix

## Write a short comment describing this function

makeCacheMatrix <- function(x = matrix()) {
        inv <- NULL
        set <- function(y){
                x <<- y
                inv <<- NULL  
        }
        get <- function() x

        setInv <- function(inverse) inv <<- inverse        
        getInv <- function()inv
        
        list( set = set, get = get, setInv = setInv, getInv = getInv)
}


## This function calculates the inverse if it's not cached already
## once it calculates the inverse, it would store it into cache

cacheSolve <- function(x, ...) { 
        ## x is the list of functions just created, it stores matrix x
        ## otherwise x$get or x$getInv don't make sense
        inv <- x$getInv()  ## assign inv value from list x
        
        if(!is.null(inv)){ ## if inv is equal to some value, it's calculated
                message("getting cached data")
                return(inv)
        }
        
        data <- x$get()
        inv <- solve(data,...)
        x$setInv(inv)
        inv ## Return a matrix that is the inverse of 'x'


}
