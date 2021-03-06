##' @include semiParametric.R
NULL


##' Method to calculate the Schoenfeld residuals for a SemiParametricModel
##' object.
##' @details Note there is no stratification used when calculating fitting 
##' the Cox model
##' @name schoenfeldResiduals
##' @rdname schoenfeldResiduals-methods
##' @param object (SemiParametricModel) The object for which to 
##' @param ... additional arguments passed to cox.zph  
##' @return An object of class \code{cox.zph}
##' @export
setGeneric("schoenfeldResiduals", function(object, ...) 
  standardGeneric("schoenfeldResiduals")
)


##' @name schoenfeldResiduals
##' @aliases schoenfeldResiduals,SemiParametricModel-method
##' @rdname schoenfeldResiduals-methods
setMethod("schoenfeldResiduals", "SemiParametricModel", 
  function(object, ...){
    if(isSingleArm(object)){
      stop("Cannot compute Schoenfeld residuals for a one arm trial!")
    }
    
    if(object@cox$method == "exact"){
      stop("Cannot compute Schoenfeld residuals if ties are handled using the 'exact' method")
    }
    cox.zph(object@cox, ...)  
  }
)
