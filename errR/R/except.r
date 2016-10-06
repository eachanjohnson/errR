`%except%` <- function (try.expression, catch.expression) {
  
  tryCatch(try.expression, 
           error=function(e) {
             if ( inherits(catch.expression, 'function') ) {
               catch.expression(e)
             } else {
               catch.expression
             }
           })
  
}
